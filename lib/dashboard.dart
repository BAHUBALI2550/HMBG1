import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DashBoard extends StatefulWidget{
  @override
  State<DashBoard> createState() => DashBoardPage();

}
class DashBoardPage extends State<DashBoard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GOOD MORNING!'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}