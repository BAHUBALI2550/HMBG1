import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/dashboard.dart';

class Learn extends StatefulWidget{
  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
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
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('SHLOK CALCULATER',style: TextStyle(color: Colors.white,fontSize: 35),),
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 400,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('In How Many Days You Want To Read Bhagvat Gita ? ',textAlign: TextAlign.justify,style: TextStyle(color: Colors.white,fontSize: 35),)),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('3 Months',style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('6 Months',style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('1 Year',style: TextStyle(color: Colors.white,fontSize: 35),),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: Text('Calculate',style: TextStyle(fontSize: 30),))
              ],
            ),
          ),

        ],
      ),
    );
  }
}