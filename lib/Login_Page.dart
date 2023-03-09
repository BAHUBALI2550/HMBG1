
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hmbg/DashBoarddrawer.dart';
import 'package:hmbg/SignUp.dart';
import 'package:hmbg/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_Page extends StatefulWidget{
  // var Userid;
  // var Passw;
  // Login_Page(this.Userid,this.Passw);
  @override
  State<Login_Page> createState() => Login_PageState();
}

class Login_PageState extends State<Login_Page> {
  // var Userid1;
  // var Passw2;
  // var error;
  // _Login_PageState(this.Userid1,this.Passw2);

  @override
  void initState() {
    super.initState();
    whereToGo1();
  }

  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var user ="";
  var passw;
  static const String USER = 'user';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('asset/images/p2.jpg', fit: BoxFit.fill,),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('asset/images/inspire_logo.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Login', style: TextStyle(
                    color: Colors.black, fontSize: 65,
                  ),),
                  // Text(error,style: TextStyle(color: Colors.greenAccent,fontSize: 25),),
                  SizedBox(
                    height: 20,
                  ),
                  Text('$user'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.verified_user, color: Colors.black,),
                        label: Text('UserName', textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      obscureText: true,
                      controller: controller2,
                      decoration: InputDecoration(suffixIcon: Icon(
                        Icons.password_rounded, color: Colors.black,),
                        label: Text('Password', textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: 280,
                      child: Text(
                        'Forget Password ?', textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),)),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(onPressed: ()  async {
                    var pref=await SharedPreferences.getInstance();
                    pref.setBool(USER, true);
                    //  user=pref.getString(USER);
                    //  passw=pref.getString('pass');
                    // print('$user -- $passw');
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                    whereToGo1();
                  },
                      child: Text('Login', style: TextStyle(color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold),)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('--------------OR--------------',
                    style: TextStyle(color: Colors.black, fontSize: 18),),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sign Up', style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),),
                            )),
                      ),
                      SizedBox(
                        width: 19,
                      ),
                      FaIcon(FontAwesomeIcons.google, size: 50,
                          color: Colors.yellow),
                      SizedBox(
                        width: 19,
                      ),
                      FaIcon(FontAwesomeIcons.facebook, size: 50,
                          color: Colors.blueAccent),

                    ],
                  )
                ],

              ),
            ),
          ),
        ],
      ),);
  }

  void whereToGo1() async {
    var usernam = controller1.text.toString();
    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(USER);
    if (isLoggedIn != null) {
      if (isLoggedIn) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashBoardDrawer(usernam),));
      } else {
        user = 'Wrong UserName/Password';
      }
    } else {
      user = 'Please Enter the required Details';
    }
  }
}
