import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            height: 50,
            width: 150,
            margin: EdgeInsets.only(top: 600,left: 130),
            child: ElevatedButton(
                onPressed: (){

            }, child: Text('Begin Quiz',style: TextStyle(fontSize: 22),)),
          ),
        ],
      ),
    );
  }
}