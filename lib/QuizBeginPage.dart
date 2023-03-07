import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hmbg/LastPage.dart';
import 'package:hmbg/Question_01.dart';

class QuizBegin extends StatefulWidget{

  @override
  State<QuizBegin> createState() => _QuizBeginState();
}

class _QuizBeginState extends State<QuizBegin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('asset/images/bg chapter 1.jpg',fit: BoxFit.fill,)),
          Container(
           alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Question_01()));
                }, child: Text('Begin Quiz',style: TextStyle(fontSize: 40),)),
          ),
        ],
      ),
    );
  }
}