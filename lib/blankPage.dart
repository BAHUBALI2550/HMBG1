import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/dashboard.dart';

class BlankPage extends StatefulWidget {

  @override
  State<BlankPage> createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  late StreamSubscription subscription;
  var isDeviceConnected;

  void initState(){
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() => isDeviceConnected = result);

      if(isDeviceConnected == ConnectivityResult.mobile || isDeviceConnected == ConnectivityResult.wifi){
          if(context.widget.toStringShort() == 'SplashPage') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DashBoard()));
          }
            else return Navigator.pop(context);
      }
      print("context.widget.toStringShort: ${context.widget.toStringShort()}");
      print(isDeviceConnected);
    });
    super.initState();
  }

  getConnectivity() {
    if(isDeviceConnected == ConnectivityResult.mobile || isDeviceConnected == ConnectivityResult.wifi){
      return Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('You are offline'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('asset/images/nointernetscreenimage.png'),
          Column(
            children: [
              Container(

                child: Text('Whoops!',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Text('No Internet connection found.Check your',style: TextStyle(fontSize:15)),
              ),
              Container(
                child: Text('connection or try again.',style: TextStyle(fontSize:15)),
              ),
            ],
          ),
        ],
      )
    );
  }
}
