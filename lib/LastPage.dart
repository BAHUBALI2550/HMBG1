import 'package:flutter/material.dart';
import 'package:hmbg/Question_01.dart';
import 'package:hmbg/dashboard.dart';

class Last_Page extends StatelessWidget{
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
            margin: EdgeInsets.only(top: 70),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  question('Which of these names is not used in the first chapter of the Bhagavad Gita to address Lord Krishna?'),
                  option('Achyuta (the infallible one)'),
                  option('Govinda (the object of all pleasures for cows and the senses)'),
                  option('Janardhana (the maintainer of people)'),
                  option('Jagannatha(the Lord of Universe)'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(onPressed: (){

                      }, child: Text('End Quiz',style: TextStyle(fontSize: 25),)),
                    ),
                  )
                ],
              ),
            ),
          ),
          qhead('Question:- 10'),

        ],
      ),
    );
  }

}