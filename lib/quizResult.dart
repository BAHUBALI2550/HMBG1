import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/QuizBeginPage.dart';

import 'dashboard.dart';


class QuizResultPage extends StatefulWidget{
  @override
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/dashboard.jpg'),
          Container(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('asset/images/Pie_Chart_Sample.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Text('Time : 25s',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Text('Score : 10/10',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QuizBegin()));
                      },

                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text('Play Again',style: TextStyle(fontSize: 25),),
                            )
                        ),


                      ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard("")));
                      },
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Text('Home',style: TextStyle(fontSize: 25),),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}