import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hmbg/SBShlokaPage.dart';
import 'package:hmbg/ShlokPage1_1.dart';
import 'constants.dart';
import 'dashboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final PageController _pageController = PageController(initialPage: 0,);

  int _activePage = 0;
  final List<Widget> _pages = [
    SearchScreenBg(),
    SearchScreenSb(),
  ];
  // Widget _buildDotsLoader() {
  //   return Container(
  //     decoration: BoxDecoration(
  //         shape: BoxShape.rectangle,
  //         color: Colors.grey.withOpacity(0.45),
  //         borderRadius: BorderRadius.all(Radius.circular(20))
  //     ),
  //     padding: EdgeInsets.only(right: 8, left: 8),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: List<Widget>.generate(_pages.length,
  //               (index) => Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
  //               child: InkWell(
  //                 onTap: (){
  //                   _pageController.animateToPage(index,
  //                       duration: const Duration(microseconds: 300),
  //                       curve: Curves.easeIn);
  //                 },
  //                 child: Container(
  //                   width: (_activePage == index) ? 17.0 : 8.0,
  //                   height: 8.0,
  //                   margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
  //                   decoration: BoxDecoration(
  //                       shape: BoxShape.rectangle,
  //                       borderRadius: BorderRadius.all(Radius.circular(20)),
  //                       color: _activePage == index ? Colors.white
  //                           .withOpacity(1.0) : Colors.grey
  //                           .withOpacity(0.9)),
  //                 ),
  //               ),))
  //     ),
  //   );
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //           PageView.builder(
  //             controller: _pageController,
  //               onPageChanged: (int page){
  //               setState(() {
  //                 _activePage = page;
  //               });
  //               },
  //               itemCount: _pages.length,
  //               itemBuilder: (BuildContext context, int index,){
  //                 return _pages[index % _pages.length];
  //               }),
  //         Positioned(
  //           child: _buildDotsLoader(),
  //           left: 0,
  //           right: 0,
  //           bottom: 10,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  PageController? pageController;
  var viewportFraction = 0.8;
  double? pageOffset = 0;
  Size? size;

  @override
  void initState() {
    super.initState();
    pageController =
    PageController(initialPage: 0, viewportFraction: viewportFraction)
      ..addListener(
            () => setState(
              () => pageOffset = pageController!.page,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VedicGranth',style: TextStyle(fontFamily: 'Samarkan',fontWeight: FontWeight.bold),),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/newdashboard.jpg'),
          PageView.builder(
          controller: pageController,
          itemCount: _pages.length,
          itemBuilder: (context, index) {
            double scale = max(viewportFraction,
                1 - (pageOffset! - index).abs() + viewportFraction);

            double angleY = (pageOffset! - index).abs();
            if (angleY > 0.5) {
              angleY = 1 - angleY;
            }
            return Padding(
              padding: EdgeInsets.only(
                right: size!.width * 0.01,
                left: size!.width * 0.01,
                top: 100 - scale * 30,
                bottom: size!.width * 0.06,
              ),
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(angleY),
                alignment: Alignment.center,
                child: Material(
                  color: Colors.transparent,
                  elevation: 15,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: _pages[index],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        ],
      ),
    );
  }
}


class SearchScreenBg extends StatelessWidget {

  late int chapterName = 1;
  late int verseNum = 14;

  var chapternameController = TextEditingController();
  var versenumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          dashboardContainer('asset/images/newdashboard.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              color: Colors.orangeAccent,
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Opacity(
                        opacity: 0.85,
                        child: Image.asset('asset/images/p1.1.3.png',fit: BoxFit.fill,))),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Center(
                    child: Column(
                        children: [
                          Container(
                              child: Text('Bhagavad Gita',style: TextStyle(
                                fontFamily: 'Samarkan',
                                fontSize: 30
                              ),),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: TextField(
                                controller: chapternameController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.datetime,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  chapterName = int.parse(value);
                                },
                                decoration: kTextFileDecoration.copyWith(hintText: 'Chapter Number'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: TextField(
                                controller: versenumController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.datetime,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  verseNum = int.parse(value);
                                },
                                decoration: kTextFileDecoration.copyWith(hintText: 'Verse Number'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              elevation: 5.0,
                              child: MaterialButton(
                                onPressed: () async{
                                  //Implement registration functionality.
                                  try {
                                    if(chapterName == 1 && (verseNum < 1 || verseNum > 46)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 2 && (verseNum < 1 || verseNum > 72)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 3 && (verseNum < 1 || verseNum > 43)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 4 && (verseNum < 1 || verseNum > 42)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 5 && (verseNum < 1 || verseNum > 29)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 6 && (verseNum < 1 || verseNum > 47)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 7 && (verseNum < 1 || verseNum > 30)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 8 && (verseNum < 1 || verseNum > 28)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 9 && (verseNum < 1 || verseNum > 34)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 10 && (verseNum < 1 || verseNum > 42)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 11 && (verseNum < 1 || verseNum > 55)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 12 && (verseNum < 1 || verseNum > 20)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 13 && (verseNum < 1 || verseNum > 35)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 14 && (verseNum < 1 || verseNum > 27)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 15 && (verseNum < 1 || verseNum > 20)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 16 && (verseNum < 1 || verseNum > 24)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 17 && (verseNum < 1 || verseNum > 28)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else if(chapterName == 18 && (verseNum < 1 || verseNum > 78)){
                                      Fluttertoast.showToast(
                                          msg: "Not Available !!",
                                          toastLength: Toast.LENGTH_LONG,
                                          fontSize: 20,
                                          backgroundColor: Colors.black38
                                      );
                                    }
                                    else Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ShlokPage1_1(chapterName, verseNum)));
                                  }
                                  catch(e) {
                                    print(e);
                                  }
                                },
                                minWidth: 200.0,
                                height: 42.0,
                                child: Text(
                                  'Search',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchScreenSb extends StatelessWidget {

  late int cantoNum = 1;
  late int chapterName = 1;
  late int verseNum = 1;

  var cantonumController = TextEditingController();
  var chapternameController = TextEditingController();
  var versenumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          dashboardContainer('asset/images/newdashboard.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              color: Colors.orangeAccent,
              child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Opacity(
                          opacity: 0.85,
                          child: Image.asset('asset/images/sb.jpg',fit: BoxFit.fill,))),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            child: Text('Srimad Bhagvatama',style: TextStyle(
                                fontFamily: 'Samarkan',
                                fontSize: 30
                            ),),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: TextField(
                                controller: cantonumController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.datetime,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  cantoNum = int.parse(value);
                                },
                                decoration: kTextFileDecoration.copyWith(hintText: 'Canto Number'),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: TextField(
                                controller: chapternameController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.datetime,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  chapterName = int.parse(value);
                                },
                                decoration: kTextFileDecoration.copyWith(hintText: 'Chapter Number'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: TextField(
                                controller: versenumController,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.datetime,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  verseNum = int.parse(value);
                                },
                                decoration: kTextFileDecoration.copyWith(hintText: 'Verse Number'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              elevation: 5.0,
                              child: MaterialButton(
                                onPressed: () async{
                                  //Implement registration functionality.
                                  try {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SBShlokaPage(cantoNum,chapterName, verseNum)));
                                  }
                                  catch(e) {
                                    print(e);
                                  }
                                },
                                minWidth: 200.0,
                                height: 42.0,
                                child: Text(
                                  'Search',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

