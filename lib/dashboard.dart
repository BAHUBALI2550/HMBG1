
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/DashBoarddrawer.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hmbg/blankPage.dart';
import 'package:hmbg/favourite_screen.dart';
import 'package:hmbg/readContinuationBg.dart';
import 'package:hmbg/readContinuationBhagvatam.dart';
import 'package:hmbg/readContinuationKrsna.dart';
import 'package:hmbg/readContinueRamayan.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  late StreamSubscription subscription;
  var isDeviceConnected;

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  void initState(){
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() => isDeviceConnected = result);
      if(isDeviceConnected == ConnectivityResult.none){
        Navigator.push(context, MaterialPageRoute(builder: (context) => BlankPage()));
      }
    });
    super.initState();
  }

  getConnectivity() {
    if(isDeviceConnected == ConnectivityResult.none){
      return Navigator.push(context, MaterialPageRoute(builder: (context) => BlankPage()));
    }
  }

  @override
  void dispose(){
    subscription.cancel();
    super.dispose();
  }

  List<String> images = [
    "asset/images/bhagavadgita-6.jpg",
    "asset/images/ramayana.jpeg",
    "asset/images/krshna.jpg",
    "asset/images/bhagavatam-01.jpg",
  ];
  
  List<String> BookCover = [
    "asset/images/bgbookcover.jpg",
    "asset/images/ramayanbookcover.jpg",
    "asset/images/krshnabookcover.jpg",
    "asset/images/sbbookcover.jpg",
  ];
  List<String> BookName = ["Bhagavad Gita","Ramayana","Krsna","Srimad Bhagvatama"];
  List<dynamic> BookAddress = [ReadContinueBg(),ReadContinueRamayan(),KrsnaPage(),ReadBhagvatam()];
  Widget _buildDotsLoader() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.grey.withOpacity(0.45),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      padding: EdgeInsets.only(right: 8, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: (_current == entry.key) ? 17.0 : 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: _current == entry.key ? Colors.white
                      .withOpacity(1.0) : Colors.grey
                      .withOpacity(0.9)),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashBoardDrawer(),
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
        ],
      ),
      body: SafeArea(
          child: Stack(
            children: [
              dashboardContainer('asset/images/newdashboard.jpg'),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned.fill(
                                    child: CarouselSlider(
                                      items: images
                                          .map((deal) => GestureDetector(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => BookAddress[_current]));
                                        },
                                        child: Image.asset(deal,fit: BoxFit.cover,),
                                      ))
                                          .toList(),
                                      carouselController: _controller,
                                      options: CarouselOptions(
                                          autoPlay: true,
                                          viewportFraction: 1.0,
                                          autoPlayInterval: Duration(seconds: 3),
                                          autoPlayAnimationDuration:
                                          Duration(milliseconds: 777),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          height: constraints.maxHeight,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              _current = index;
                                            });
                                          }),
                                    ),
                                  ),
                                  Positioned(
                                    child: _buildDotsLoader(),
                                    bottom: constraints.maxHeight * 0.02,
                                  ),
                                ],
                              );
                            }),

                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.book),
                          Text("Library",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,fontFamily: 'Samarkan')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                        child:
                      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),

                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: Container(
                            child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookAddress[index]));
                                },
                                child: BookCard(BookCover[index],BookName[index])),
                          ),
                        );
                      },
                        itemCount: BookCover.length,),

                    ),
                  ],
                ),
              ),
            ],
          ),

      ),
    );
  }
  Widget buildIndicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 10 : 8,
        width: isSelected ? 10 : 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
class dashboardContainer extends StatelessWidget{
  final String image;
  const dashboardContainer(this.image, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(image,fit: BoxFit.fill,)),
    );
  }

}

class BookCard extends StatelessWidget {
  String url;
  String name;
  BookCard(this.url,this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset(url)),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 2.0),
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          height: 20,
          child: Text(name,style: TextStyle(fontFamily: 'Samarkan',fontSize: 14),textAlign: TextAlign.center,),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}