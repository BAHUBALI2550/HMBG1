import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

import 'dashboard.dart';

class RamayanaShloka extends StatefulWidget {
  final String url;
  const RamayanaShloka(this.url);

  @override
  State<RamayanaShloka> createState() => _RamayanaShlokaState(url);
}

class _RamayanaShlokaState extends State<RamayanaShloka> {

final String url;
_RamayanaShlokaState(this.url);
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
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(

            title: Text("HMBG"),
          ),
          body:Stack(
            children: [
              dashboardContainer('asset/images/newdashboard.jpg'),
              ListView.builder(itemCount:articles.length > 1 ? 1:articles.length,itemBuilder: (context,index){
                final article=articles[index];
                  return ListBody(
                       children: [
                         Padding(padding: const EdgeInsets.all(8.0),
                            child: Text(article.titles!,style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),textAlign: TextAlign.center
                              ,),
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
