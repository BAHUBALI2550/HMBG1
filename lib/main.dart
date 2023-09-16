import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hmbg/dashboard.dart';
import 'package:hmbg/models/favourite_model.dart';
import 'package:hmbg/readContinuationBhagvatam.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(FavouriteModelAdapter());
  await Hive.openBox<FavouriteModel>('favourite');

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
          primarySwatch: Colors.orange,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.indigo,
                    width: 2,
                  ),
                ),
              )
          ),
        ),

        home: ReadBhagvatam(),

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

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => SplashPageState();


}
class SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  static const String KEYLOGIN = "Login";


  Animation? animation ;
  late AnimationController animationController;
  late StreamSubscription subscription;
  var isDeviceConnected;
  @override
  void initState() {
    // TODO: implement initState
    initTimer();
    super.initState();
    // ignore: use_function_type_syntax_for_parameters
  }
  void initTimer()async{
    if(await checkinternet()){
      animationController = AnimationController(vsync: this,duration: Duration(seconds: 4),);
      animation = Tween(begin: 0.0,end: 250.0).animate(animationController);
      animationController.addListener(() {
        setState(() {

        });
      });
      animationController.forward();
      whereToGo();
    }
    else{
    }
  }

  Future<bool> checkinternet() async{
    var connectivityResult = await(Connectivity().checkConnectivity());
    if(connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)
      return true;
    else return false;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          child: FutureBuilder(
            future: checkinternet(),
            builder: (BuildContext context,snap){
              if(snap.data == true){
                return     Stack(children: [
                  Center(
                      child:
                      Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Image.asset('asset/images/p1.1.3.png',fit: BoxFit.fill,))),
                  Center(child: Image.asset('asset/images/inspire_logo.png',color: Colors.black,width: animation!.value,height: animation!.value,fit: BoxFit.fill,))
                ]
                );
              }
              else{
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
                            ElevatedButton(onPressed: (){
                              setState(() {
                                initTimer();
                              });
                            }, child: Text("Retry"))
                          ],
                        ),
                      ],
                    )
                );
              }
            }
          ),
        ),

    //     Stack(children: [
    //       Center(
    //         child:
    //         Container(
    //           width: double.infinity,
    //             height: double.infinity,
    //             child: Image.asset('asset/images/p1.1.3.png',fit: BoxFit.fill,))),
    //       Center(child: Image.asset('asset/images/inspire_logo.png',color: Colors.black,width: animation.value,height: animation.value,fit: BoxFit.fill,))
    //     ]
    // )
    );
  }


  void whereToGo() async {

    // var sharedpref = await SharedPreferences.getInstance();
    // var isLoggedIn = sharedpref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 4), () {
      //   if(isLoggedIn!=null){
      //     if(isLoggedIn){
      //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
      //     }else{
      //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Page(),));
      //     }
      //   }else {
      //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Page(),));
      //   }
      //
      // },
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard(),
      ));
    },
    );
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




