import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget{
  var controller1=TextEditingController();
  var controller2=TextEditingController();
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
                  Text('Login',style: TextStyle(
                      color: Colors.black,fontSize: 65
                  ),),
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
                      controller: controller1,
                      decoration: InputDecoration(suffixIcon: Icon(Icons.verified_user,color: Colors.black,),
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
                      controller: controller2,
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
                  Text('Forget Password ?',style: TextStyle(color: Colors.blueAccent),),
                  ElevatedButton(onPressed: (){

                  }, child: Text('Login'))
                ],

              ),
            ),
          ],
        ),);}
}