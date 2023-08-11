import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hmbg/DashBoarddrawer.dart';
import 'package:hmbg/Login_Page.dart';
import 'package:hmbg/Question_01.dart';
import 'package:hmbg/QuizBeginPage.dart';
import 'package:hmbg/dashboard.dart';
import 'package:hmbg/quizResult.dart';
import 'package:hmbg/readContinuation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ShlokPage1_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.orange,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton. styleFrom(
            primary:Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.indigo,
            width: 2,
          ),
          ),
          )
        ),

      ),


      home: DashBoard(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => SplashPageState();


}
class SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  static const String KEYLOGIN = "Login";

  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end: 250.0).animate(animationController);

    animationController.addListener(() {
      setState(() {

      });
    });
    animationController.forward();

    whereToGo();
    // ignore: use_function_type_syntax_for_parameters

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Center(
            child:
            Container(
              width: double.infinity,
                height: double.infinity,
                child: Image.asset('asset/images/p1.1.3.png',fit: BoxFit.fill,))),
          Center(child: Image.asset('asset/images/inspire_logo.png',color: Colors.black,width: animation.value,height: animation.value,fit: BoxFit.fill,))
        ]
    )
    );
  }
  void whereToGo() async {

    var sharedpref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 4), (){
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Page(),));
        }
      }else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Page(),));
      }

    },);
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home'),
    );
  }

}




