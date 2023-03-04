
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hmbg/Login_Page.dart';
import 'package:hmbg/SignUp.dart';
import 'package:hmbg/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatelessWidget{
  var con1=TextEditingController();
  var con2=TextEditingController();
  var con3=TextEditingController();
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Stack(
    children: [
      Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('asset/images/p2.jpg',fit: BoxFit.fill,),
        ),
      ),
      Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width:250,
                  height: 250,
                  child: Image.asset('asset/images/inspire_logo.png')),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text('Sign Up',style: TextStyle(
                  color: Colors.black,fontSize: 65,
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: con3,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email,color: Colors.black,),
                    label: Text('Email',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(color: Colors.white,width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(color: Colors.white,width: 2),
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: con1,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.verified_user,color: Colors.black,),
                    label: Text('UserName',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(color: Colors.white,width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:BorderSide(color: Colors.white,width: 2),
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
                  controller: con2,
                  decoration: InputDecoration(suffixIcon: Icon(Icons.password_rounded,color: Colors.black,),
                    label: Text('Password',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
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
              ElevatedButton(onPressed: () async {
                var pref=await SharedPreferences.getInstance();
                pref.setString('user',con1.toString() );
                pref.setString('pass', con2.toString());

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Page(),));
              }, child: Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 29,fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 15,
              ),
              Text('--------------OR--------------',style:TextStyle(color: Colors.black,fontSize: 18),),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(FontAwesomeIcons.google,size: 50,color: Colors.yellow),
                  SizedBox(
                    width: 19,
                  ),
                  FaIcon(FontAwesomeIcons.facebook,size: 50,color: Colors.blueAccent),

                ],
              )
            ],

          ),
        ),
      ),
    ],
  ),
);
  }

}