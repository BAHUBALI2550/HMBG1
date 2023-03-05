import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DashBoard extends StatefulWidget{
  @override
  State<DashBoard> createState() => DashBoardPage();

}
class DashBoardPage extends State<DashBoard> {
 DrawerItem currentItem = DrawerItems.home;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
      style: DrawerStyle.Style1,
      borderRadius: 40,
      angle: -20,
      slideWidth: MediaQuery.of(context).size.width*0.8,
      showShadow: true,
      backgroundColor: Colors.purple,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => DrawerPage(
          currentItem: currentItem,
          onSelectedItem: (item){
            setState(() => currentItem == item);
            ZoomDrawer.of(context)!.close();
          }
        ),
      ),

  );
  Widget getScreen() {
    switch (currentItem){
      case DrawerItems.home:
        return MainPage();
      case DrawerItems.promos:
        return PromoPage();
      case DrawerItems.notifications:
        return Notify();
      case DrawerItems.help:
        return HelpCentre();
      case DrawerItems.about:
        return AboutUs();
      case DrawerItems.rateUs:
      default:
        return RateUs();
    }
  }
}

class dashboardContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('asset/images/dashboard.jpg',fit: BoxFit.fill,)),
    );
  }

}
class dashBoardImage extends StatelessWidget{
  final String image;
  final String title ;
  var width1;
  var margin1;
  dashBoardImage(this.image, this.title,this.width1,this.margin1);
  @override
  Widget build(BuildContext context) {
return Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 800,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 7,
                      color: Colors.black38,
                    )
                  ]
              ),
              width:800,
              height: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(11),

                  child: Image.asset(image,fit: BoxFit.fill,))),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(11),
            ),
              margin: EdgeInsets.only(left: margin1,top: 150),
              width: width1,
              height: 55,

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(title,style: TextStyle(fontSize: 35,color: Colors.black87,fontWeight: FontWeight.bold),),
              ))
        ],
      ),
    ),
  ),
);
  }

}
class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => MainPageState();

}
class MainPageState extends State<MainPage>{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
        leading: MenuWidget(),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Colors.orangeAccent,
        elevation: 1.0,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.account_circle_outlined,size: 40,), label: 'Profile',selectedIcon: Icon(Icons.account_circle),)),
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.search_sharp,size: 40,), label: 'Search',selectedIcon: Icon(Icons.search_rounded),)),
          NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.red.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                  )
              ),
              child:const NavigationDestination(icon: Icon(Icons.favorite_border,size: 40,), label: 'Favourite',selectedIcon: Icon(Icons.favorite),)),
        ],
      ),

      body: Stack(
        children: [
          dashboardContainer(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                   // width: 238,
                      height: 25,

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Center(child: Text('!! WELCOME USERNAME !!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                ),
                SizedBox(
                  height: 9,
                ),
                dashBoardImage("asset/images/bhagavadgita-6.jpg", "BHAGAVAD GITA",500.0,97.0),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/ramayan1.jpg", "RAMAYANA",200.0,178.0),
                SizedBox(
                  height: 11,
                ),

                dashBoardImage("asset/images/mahabharat.jpg", "MAHABHARAT",500.0,128.0),
                SizedBox(
                  height: 11,
                ),
                dashBoardImage("asset/images/vishnupuran.jpg", "VISHNUPURAN",500.0,124.0),
              ],
            ),
          ),

        ],
      ),
    );
  }

}
class MenuWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) => IconButton(
    icon: Icon(Icons.menu),
      onPressed: () => ZoomDrawer.of(context)!.toggle(),

  );

}

class DrawerPage extends StatelessWidget{
  final DrawerItem currentItem;
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
}) : super(key: key);
  @override
  Widget build(BuildContext context) => Theme(
    data: ThemeData.dark(),
    child: Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            ...DrawerItems.all.map(buildDrawerItem).toList(),
            Spacer(flex: 2,),
          ],
        ),
      ),
    ),
  );
  Widget buildDrawerItem(DrawerItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.orangeAccent.shade100,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => onSelectedItem(item),
    ),
  );
}

class DrawerItems{
  static const home = DrawerItem('Home',Icons.home);
  static const help = DrawerItem('Help',Icons.help_center);
  static const about = DrawerItem('About',Icons.info);
  static const notifications = DrawerItem('Notification',Icons.notifications_active);
  static const promos = DrawerItem('Promo',Icons.card_giftcard);
  static const rateUs = DrawerItem('Rate Us',Icons.star_border);
  static const all= <DrawerItem>[
    home,
    promos,
    notifications,
    help,
    about,
    rateUs,
  ];
}
class DrawerItem{
  final String title;
  final IconData icon;

  const DrawerItem(this.title,this.icon);
}

class PromoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('promo',style: TextStyle(fontSize: 30),),
    );
  }

}
class Notify extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Notifications',style: TextStyle(fontSize: 30),),
    );
  }

}
class HelpCentre extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('help info',style: TextStyle(fontSize: 30),),
    );
  }

}
class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Text('Our Journey',style: TextStyle(fontSize: 30),),
    );
  }

}
class RateUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('rate us',style: TextStyle(fontSize: 30),),
    );
  }

}



