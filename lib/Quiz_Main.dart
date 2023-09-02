import 'package:flutter/material.dart';
import 'package:hmbg/QuizBeginPage.dart';
import 'package:hmbg/dashboard.dart';
import 'package:hmbg/readContinuation.dart';

class Quiz_Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body:Stack(
        children: [
          dashboardContainer('asset/images/dashboard.jpg'),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizBegin()));
                      },
                      child: ChapterContainer(1,46)),
                  SizedBox(
                    height: 11,
                  ),
                  // ChapterContainer(2),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(3),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(4),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(5),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(6),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(7),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(8),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(9),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(10),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(11),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(12),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(13),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(14),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(15),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(16),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(17),
                  // SizedBox(
                  //   height: 11,
                  // ),
                  // ChapterContainer(18),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text('QUIZ',style: TextStyle(color: Colors.white,fontSize: 45),)),
              Text('-------------------------------',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),

    );
  }

}