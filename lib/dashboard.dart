import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hmbg/BGMain_Page.dart';
import 'package:hmbg/Chapter%20_01verses.dart';
import 'package:hmbg/DashBoarddrawer.dart';

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

  int currentIndex = 0;

  List<String> images = [
    "https://i.pinimg.com/564x/9b/5c/1a/9b5c1a91b70ba925d9f849e157d1fdf7.jpg",
    "https://asianmoviepulse.com/wp-content/uploads/2023/01/lAWhe5ck.jpeg",
    "https://e0.pxfuel.com/wallpapers/389/25/desktop-wallpaper-arjuna-holding-wheel-chakra-arjun-mahabharat.jpg",
    "https://www.bvashram.org/wp-content/uploads/2005/11/bhagavatam-01.jpg",
  ];
  
  List<String> BookCover = [
    "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-rkd.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-mbk.2e16d0ba.fill-160x254.jpg",
    "https://vedabase.io/media/images/en-sb7_Qj96zoT.2e16d0ba.fill-240x380.jpg",
  ];
  List<String> BookName = ["Bhagavad Gita","Ramayana","Mahabharata","Srimad Bhagvatama"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashBoardDrawer(),
      appBar: AppBar(
        title: Text('HMBG'),
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
                      child: Stack(
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              child: PageView.builder(
                                onPageChanged: (index){
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                itemCount: images.length,
                                itemBuilder: (context,index){
                                  return SizedBox(
                                    height: 300,
                                    width: double.infinity,
                                    child: Image.network(
                                      images[index%images.length],
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              left: 0.0,
                              right: 0.0,
                              bottom: 5.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for(var i = 0; i < images.length; i++) buildIndicator(currentIndex == i )
                                ],
                              ),
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
                        // Flexible(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       Container(
                        //         height: 220,
                        //         width: 150,
                        //         child: Image.network(
                        //           "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 220,
                        //         width: 150,
                        //         child: Image.network(
                        //           "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Flexible(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       Container(
                        //         height: 220,
                        //         width: 150,
                        //         child: Image.network(
                        //           "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 220,
                        //         width: 150,
                        //         child: Image.network(
                        //           "https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0,right: 8.0),
                          child: Container(
                            child: BookCard(BookCover[index],BookName[index]),
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
        Container(
          padding: EdgeInsets.all(8.0),
          height: 220,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 2.0),
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          height: 20,
          child: Text(name,style: TextStyle(fontFamily: 'Samarkan',),textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}





