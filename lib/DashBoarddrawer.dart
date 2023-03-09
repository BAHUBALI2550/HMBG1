import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hmbg/Login_Page.dart';
import 'package:hmbg/dashboard.dart';

class DashBoardDrawer extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  var usern="";
  DashBoardDrawer(this.usern);

  @override
  State<DashBoardDrawer> createState() => DashBoardDrawerState(usern);
}

class DashBoardDrawerState extends State<DashBoardDrawer> {
  var userna="";
  DashBoardDrawerState(this.userna);
  MenuItem currentItem = MenuItems.home;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
    mainScreen: getScreen(),
    borderRadius: 40,
    angle: 0.0,
    slideWidth: MediaQuery.of(context).size.width*0.75,
    showShadow: true,
    drawerShadowsBackgroundColor: Colors.purple,
    menuScreen: Builder(
      builder: (context) => MenuPage(
        currentItem: currentItem,
        onSelectedItem: (item){
          setState(() => currentItem = item);
          ZoomDrawer.of(context)!.close();
        },
      ),

    ),

  );
  Widget getScreen(){
    switch(currentItem){
      case MenuItems.home:return DashBoard(userna);
      case MenuItems.promos:return Promo();
      case MenuItems.notifications:return Notify();
      case MenuItems.about:default: return About();
    }
  }
}
class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Promo'),
      leading: MenuWidget(),
    ),
  );
}
class MenuItems{
  static const home = MenuItem('Home',Icons.home);
  static const promos = MenuItem('Promos',Icons.card_giftcard);
  static const notifications = MenuItem('Notifications',Icons.inbox);
  static const about = MenuItem('About',Icons.info);

  static const all = <MenuItem>[
    home,
    promos,
    notifications,
    about,
  ];
}

class MenuPage extends StatelessWidget{
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage({
    Key?key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Theme(
    data: ThemeData.dark(),
    child: Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex:2)
          ],
        ),
      ),
    ),
  );
  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child:   ListTile(

      selected: currentItem == item,

      selectedTileColor: Colors.black26,

      minLeadingWidth: 20,

      leading: Icon(item.icon),

      title: Text(item.title),

      onTap: () => onSelectedItem(item),

    ),
  );
}
class Notify extends StatelessWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Notify'),
      leading: MenuWidget(),
    ),
  );
}
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('About'),
      leading: MenuWidget(),
    ),
  );
}
class MenuItem{
  final String title;
  final IconData icon;

  const MenuItem(this.title,this.icon);
}
class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => IconButton(
    icon: Icon(Icons.menu),
    onPressed: ()=>ZoomDrawer.of(context)!.toggle(),
  );
}