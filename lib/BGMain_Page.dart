import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/Quiz_Main.dart';
import 'package:hmbg/dashboard.dart';
import 'package:hmbg/learn.dart';
import 'package:hmbg/readContinuation.dart';

class BGMain_Page extends StatefulWidget{
  @override
  State<BGMain_Page> createState() => _BGMain_PageState();
}

class _BGMain_PageState extends State<BGMain_Page> {
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
    body:
    Stack(
      children: [
        dashboardContainer('asset/images/dashboard.jpg'),
        Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(child: Container(
              width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('BHAGVAT GITA',style: TextStyle(color: Colors.white,fontSize: 35),),
                ))),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadContinue()));
              }, child: Text('Read',style: TextStyle(fontSize: 45),)),
            ),
            SizedBox(
              height: 105,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz_Main()));
            }, child: Text('Quiz',style: TextStyle(fontSize: 45),)),
            SizedBox(
              height: 105,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Learn()));
            }, child: Text('Learn',style: TextStyle(fontSize: 45),))
          ],
        ),
      ],
    ),
    );
  }
}