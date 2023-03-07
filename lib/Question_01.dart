import 'package:flutter/material.dart';
import 'package:hmbg/LastPage.dart';

import 'dashboard.dart';

class Question_01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body:Stack(
        children: [
          dashboardContainer('asset/images/dashboard.jpg'),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  question('Which of these is not to be considered as a reason by Arjuna, in order to not fight the great battle of Kurukshetra?'),
                  SizedBox(
                    height: 12,
                  ),
                  option('Fear from sinful reactions'),
                  SizedBox(
                    height: 12,
                  ),
                  option('Fear of losing the battle'),
                  SizedBox(
                    height: 12,
                  ),
                  option('Destruction of family tradition'),
                  SizedBox(
                    height: 12,
                  ),
                  option('Compassion for loved once'),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Last_Page()));
                      }, child: Text('Next',style: TextStyle(fontSize: 25),)),
                    ),
                  ),

                ],
              ),
            ),
          ),
          qhead('Question:- 01'),
        ],
      ),

    );
  }

}
class option extends StatelessWidget{

  var op="";
  option(this.op);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          alignment: Alignment.center,
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text('$op',style:TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center,)),
    );
  }

}
class question extends StatelessWidget{
  var ques="";
  question(this.ques);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('$ques',style: TextStyle(color: Colors.white,fontSize: 25,),textAlign: TextAlign.justify,),
          )),
    );
  }

}
class qhead extends StatelessWidget{
  var head="";
  qhead(this.head);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text('$head',
          style: TextStyle(color: Colors.white,
              fontSize: 45),));
  }

}