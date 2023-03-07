import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/dashboard.dart';

import 'ShlokPage1_1.dart';


class Chapter_01 extends StatefulWidget{
  @override
  State<Chapter_01> createState() => _Chapter_01State();
}

class _Chapter_01State extends State<Chapter_01> {
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
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/dashboard.jpg'),
              Container(
                alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 11),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('Chapter-01',style: TextStyle(color: Colors.white,fontSize: 45),)),
              // GridView.count(crossAxisCount: 5,
              // children: [
              //   Container(
              //     width: 20,
              //     height: 20,
              //     color: Colors.black.withOpacity(0.5),
              //   ),
              // ],
              // )
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: GridView.count(crossAxisCount: 5,children: [
              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShlokPage1_1()));
                  },
                  child: grids(1)),grids(2),grids(3),grids(4),grids(5),grids(6),grids(7),grids(8),grids(9),
              grids(10),grids(12),grids(13),grids(14),grids(15),grids(16),grids(17),grids(18),grids(19),
              grids(20),grids(21),grids(22),grids(23),grids(24),grids(25),grids(26),grids(27),grids(28),
              grids(29),grids(30),grids(31),grids(32),grids(33),grids(34),],mainAxisSpacing: 11,crossAxisSpacing: 11,
    ),
          )
        ],
      ),

    );
  }
}
class grids extends StatelessWidget{
  var num;
  grids(this.num);
  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 10,
          height: 10,
          color: Colors.black.withOpacity(0.5),
          child: Center(child: Text('$num',style: TextStyle(color: Colors.white,fontSize: 25),)),
    );
  }
  
}
