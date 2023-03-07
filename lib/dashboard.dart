import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/BGMain_Page.dart';

class DashBoard extends StatefulWidget{
  @override
  State<DashBoard> createState() => DashBoardPage();

}
class DashBoardPage extends State<DashBoard>{
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
              child:const NavigationDestination(icon: Icon(Icons.home_outlined,size: 40,), label: 'Favourite',selectedIcon: Icon(Icons.home),)),
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
              child:const NavigationDestination(icon: Icon(Icons.search_sharp,size: 40,), label: 'Search',selectedIcon: Icon(Icons.search_rounded),)),
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
      appBar: AppBar(

        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/dashboard.jpg'),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // width: 238,
                      height: 25,

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Center(child: Text('!! WELCOME USERNAME !!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                ),
                SizedBox(
                  height: 9,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BGMain_Page()));
                    },
                    child: dashBoardImage("asset/images/bhagavadgita-6.jpg", "BHAGAVAD GITA",500.0,97.0)),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/ramayan1.jpg", "RAMAYANA",200.0,178.0),
                SizedBox(
                  height: 11,
                ),

                dashBoardImage("asset/images/mahabharat.jpg", "MAHABHARAT",500.0,128.0),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/vishnupuran.jpg", "VISHNUPURAN",500.0,124.0),
              ],
            ),
          ),

        ],
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
class dashBoardImage extends StatelessWidget{
  final String image;
  final String title ;
  var width1;
  var margin1;
  dashBoardImage(this.image, this.title,this.width1,this.margin1);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 800,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 7,
                          color: Colors.black38,
                        )
                      ]
                  ),
                  width:800,
                  height: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),

                      child: Image.asset(image,fit: BoxFit.fill,))),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  margin: EdgeInsets.only(left: margin1,top: 150),
                  width: width1,
                  height: 55,

                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(title,style: TextStyle(fontSize: 35,color: Colors.black87,fontWeight: FontWeight.bold),),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}
class PromoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text('Promo',style: TextStyle(fontSize: 60),);
  }

}