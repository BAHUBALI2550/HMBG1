import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

import 'dashboard.dart';
import 'favourite_screen.dart';

class RamayanaShloka extends StatefulWidget {
  final String url;
  const RamayanaShloka(this.url);

  @override
  State<RamayanaShloka> createState() => _RamayanaShlokaState(url);
}

class _RamayanaShlokaState extends State<RamayanaShloka> with TickerProviderStateMixin{

final String url;
_RamayanaShlokaState(this.url);
late AnimationController controller;
  List<Article> articles = [];

  Future getWebsiteDataAppendx(String Url) async {
    final url = Uri.parse(Url);
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);
    final ttle = html
        .querySelectorAll('#content > div')
        .map((e) => e.text)
        .map((e) => e.replaceAll('<br>', '\n'))
        .toString();
    text = ttle;
    setState(() {
      articles=List.generate(ttle.length,
      (index) => Article(
        titles: ttle,
      ));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWebsiteDataAppendx(url);
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
  }
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();}
String text = "";
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text('VedicGranth',style: TextStyle(fontFamily: 'Samarkan',fontWeight: FontWeight.bold),),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavouriteScreen()));
                },
                icon: const Icon(Icons.favorite),
              ),
            ]
          ),
          body:Stack(
            children: [
              dashboardContainer('asset/images/newbackground5.png'),
              text == ""?
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Loading ...',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        child: CircularProgressIndicator(
                          value: controller.value,
                          color: Colors.grey,
                          semanticsLabel: 'Circular progress indicator',
                        ),
                        height: 70.0,
                        width: 70.0,
                      ),
                    ],
                  ),
                ),
              ):
              ListView.builder(itemCount:articles.length > 1 ? 1:articles.length,itemBuilder: (context,index){
                final article=articles[index];
                  return ListBody(
                       children: [
                         Padding(padding: const EdgeInsets.only(right: 25,left: 25),
                            child: Container(
                              child: Text(article.titles!,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontFamily: 'Lora'),textAlign: TextAlign.center
                                ,),
                            ),
                          ),
                        ],
                    );
            }),
            ],
          ),
      );
    }
}

  class Article {
  late final String? titles;

  Article({
    required this.titles,
  });
}
