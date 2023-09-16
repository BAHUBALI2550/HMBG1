
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/DashBoarddrawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hmbg/blankPage.dart';
import 'package:hmbg/favourite_screen.dart';

import 'package:hmbg/readContinuationBg.dart';
import 'package:hmbg/readContinuationBhagvatam.dart';
import 'package:hmbg/readContinuationKrsna.dart';
import 'package:hmbg/readContinueRamayan.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';




// class DashBoard extends StatefulWidget{
//   var nam="";
//   DashBoard(this.nam);
//   @override
//   State<DashBoard> createState() => DashBoardPage(nam);
//
// }
// class DashBoardPage extends State<DashBoard>{
//   var name="";
//   DashBoardPage(this.name);
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         height: 60,
//         backgroundColor: Colors.orangeAccent.shade200,
//         elevation: 1.0,
//         labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
//         selectedIndex: index,
//         onDestinationSelected: (index) => setState(() => this.index = index),
//         destinations: [
//           NavigationBarTheme(
//               data: NavigationBarThemeData(
//                   indicatorColor: Colors.red.shade100,
//                   labelTextStyle: MaterialStateProperty.all(
//                       TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
//                   )
//               ),
//               child:const NavigationDestination(icon: Icon(Icons.home_outlined,size: 40,), label: 'Favourite',selectedIcon: Icon(Icons.home),)),
//           NavigationBarTheme(
//               data: NavigationBarThemeData(
//                   indicatorColor: Colors.red.shade100,
//                   labelTextStyle: MaterialStateProperty.all(
//                       TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
//                   )
//               ),
//               child:const NavigationDestination(icon: Icon(Icons.account_circle_outlined,size: 40,), label: 'Profile',selectedIcon: Icon(Icons.account_circle),)),
//           NavigationBarTheme(
//               data: NavigationBarThemeData(
//                   indicatorColor: Colors.red.shade100,
//                   labelTextStyle: MaterialStateProperty.all(
//                       TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
//                   )
//               ),
//               child:const NavigationDestination(icon: Icon(Icons.search_sharp,size: 40,), label: 'Search',selectedIcon: Icon(Icons.search_rounded),)),
//           NavigationBarTheme(
//               data: NavigationBarThemeData(
//                   indicatorColor: Colors.red.shade100,
//                   labelTextStyle: MaterialStateProperty.all(
//                       TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
//                   )
//               ),
//               child:const NavigationDestination(icon: Icon(Icons.favorite_border,size: 40,), label: 'Favourite',selectedIcon: Icon(Icons.favorite),)),
//         ],
//       ),
//       drawer: DashBoardDrawer(),
//       appBar: AppBar(
//
//         title: Text('HMBG'),
//       ),
//       body: Stack(
//         children: [
//           dashboardContainer('asset/images/dashboard.jpg'),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     // width: 238,
//                       height: 25,
//
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.3),
//                         borderRadius: BorderRadius.circular(11),
//                       ),
//                       child: Center(child: Text('!! WELCOME $name !!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
//                 ),
//                 SizedBox(
//                   height: 9,
//                 ),
//                 InkWell(
//                     onTap: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>BGMain_Page()));
//                     },
//                     child: dashBoardImage("asset/images/bhagavadgita-6.jpg", "BHAGAVAD GITA",500.0,97.0)),
//                 SizedBox(
//                   height: 11,
//                 ),
//                 dashBoardImage("asset/images/ramayan1.jpg", "RAMAYANA",200.0,178.0),
//                 SizedBox(
//                   height: 11,
//                 ),
//
//                 dashBoardImage("asset/images/mahabharat.jpg", "MAHABHARAT",500.0,128.0),
//                 SizedBox(
//                   height: 11,
//                 ),
//                 dashBoardImage("asset/images/vishnupuran.jpg", "VISHNUPURAN",500.0,124.0),
//               ],
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
// }
// class dashboardContainer extends StatelessWidget{
//   String image="";
//   dashboardContainer(this.image);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: Image.asset(image,fit: BoxFit.fill,)),
//     );
//   }
//
// }
// class dashBoardImage extends StatelessWidget{
//   final String image;
//   final String title ;
//   var width1;
//   var margin1;
//   dashBoardImage(this.image, this.title,this.width1,this.margin1);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           width: 800,
//           height: 200,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Stack(
//             children: [
//               Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 7,
//                           spreadRadius: 7,
//                           color: Colors.black38,
//                         )
//                       ]
//                   ),
//                   width:800,
//                   height: 200,
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(11),
//
//                       child: Image.asset(image,fit: BoxFit.fill,))),
//               Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(11),
//                   ),
//                   margin: EdgeInsets.only(left: margin1,top: 150),
//                   width: width1,
//                   height: 55,
//
//                   child: Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Text(title,style: TextStyle(fontSize: 35,color: Colors.black87,fontWeight: FontWeight.bold),),
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }

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

  // showDialogBox() => showCupertinoDialog<String>(
  //     context: context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: const Text('No Connection'),
  //       content: const Text('Please Check your Internet Connectivity'),
  //       actions: <Widget>[
  //         TextButton(onPressed: () async{
  //           Navigator.pop(context, 'Cancel');
  //           setState(() => isAlertSet = false);
  //           isDeviceConnected = await InternetConnectionChecker().hasConnection;
  //           if(!isDeviceConnected && isAlertSet == false){
  //             showDialogBox();
  //             setState(() => isAlertSet = true);
  //           }
  //         },
  //         child: const Text('OK'))
  //       ],
  //     ),
  // );

  List<String> images = [
    "https://i.pinimg.com/564x/9b/5c/1a/9b5c1a91b70ba925d9f849e157d1fdf7.jpg",
    "https://asianmoviepulse.com/wp-content/uploads/2023/01/lAWhe5ck.jpeg",
    "https://i.pinimg.com/736x/d1/72/ad/d172ad7ba835c66859ecdd0d50f0e47c.jpg",
    "https://www.bvashram.org/wp-content/uploads/2005/11/bhagavatam-01.jpg",
  ];
  
  List<String> BookCover = [
    "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-rkd.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-kb_h1BPd0D.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-sb7_Qj96zoT.2e16d0ba.fill-240x380.jpg",
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
        title: Text('HMBG'),
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
        // actions: [
        //   badges.Badge(
        //     badgeContent: Consumer<CartProvider>(
        //       builder: (context, value, child) {
        //         return Text(
        //           value.getCounter().toString(),
        //           style: const TextStyle(
        //               color: Colors.white, fontWeight: FontWeight.bold),
        //         );
        //       },
        //     ),
        //     position: BadgePosition.custom(start: 30, bottom: 30),
        //     child: IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const CartScreen()));
        //       },
        //       icon: const Icon(Icons.favorite),
        //     ),
        //   ),
        //   const SizedBox(
        //     width: 20.0,
        //   ),
        // ],
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
                                          // todo -> navigate to someplace
                                        },
                                        child: CachedNetworkImage(
                                          imageUrl: deal,
                                          fit: BoxFit.cover,
                                        ),
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
  String image="";
  dashboardContainer(this.image);
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
        Expanded(child: Image.network(url)),
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