import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/dashboard.dart';

class ReadContinue extends StatefulWidget{
  @override
  State<ReadContinue> createState()  => ReadContinueState();

}
class ReadContinueState extends State<ReadContinue>{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Colors.orangeAccent,
        elevation: 1.0,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.account_circle_outlined,size: 40,), label: 'Profile',selectedIcon: Icon(Icons.account_circle),)),
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.home_outlined,size: 40,), label: 'Home',selectedIcon: Icon(Icons.home),)),
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.favorite_border,size: 40,), label: 'Favourite',selectedIcon: Icon(Icons.favorite),)),
        ],

      ),
      body: Stack(

          children: [
            dashboardContainer('asset/images/dashboard.jpg'),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 290),
                child: Column(
                  children: [
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(1),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(2),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(3),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(4),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(5),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(6),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(7),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(8),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(9),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(10),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(11),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(12),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(13),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(14),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(15),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(16),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(17),
                    SizedBox(
                      height: 11,
                    ),
                    ChapterContainer(18),
                  ],
                ),
              ),
            ),
            Image.asset('asset/images/bhagavadgita-6.jpg'),
            Container(
              margin: EdgeInsets.only(top: 255,left: 300),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PromoPage()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/playbutton1.jpg'),
                  radius: 40,

                ),
              ),
            )
      ]),
    );
  }

}

class ChapterContainer extends StatelessWidget{
  final int ind;
ChapterContainer(this.ind);
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
          ),
          child: Center(child: Text('Chapter : $ind',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)));

  }

}