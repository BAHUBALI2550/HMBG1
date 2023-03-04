import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget{
  @override
  State<DashBoard> createState() => DashBoardPage();

}
class DashBoardPage extends State<DashBoard>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          dashboardContainer(),
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
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Center(child: Text('!! WELCOME USERNAME !!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                ),
                SizedBox(
                  height: 9,
                ),
                dashBoardImage("asset/images/ramayan1.jpg", "RAMAYANA",200.0,177.0),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/bhagavadgita-6.jpg", "BHAGAVAD GITA",500.0,95.0),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/mahabharat.jpg", "MAHABHARAT",500.0,100.0)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.orange,
          )
        ],
      ),
    );
  }

}
class dashboardContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('asset/images/dashboard.jpg',fit: BoxFit.fill,)),
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
                      color: Colors.white70,
                    )
                  ]
              ),
              width:800,
              height: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(11),

                  child: Image.asset(image,fit: BoxFit.fill,))),
          Container(
              margin: EdgeInsets.only(left: margin1,top: 150),
              width: width1,
              height: 55,
              color: Colors.white.withOpacity(0.5),
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