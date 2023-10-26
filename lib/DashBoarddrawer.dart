import 'package:flutter/material.dart';
import 'package:hmbg/about_us.dart';
import 'package:hmbg/favourite_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DashBoardDrawer extends StatefulWidget {
  const DashBoardDrawer({Key? key}) : super(key: key);

  @override
  State<DashBoardDrawer> createState() => _DashBoardDrawerState();
}

class _DashBoardDrawerState extends State<DashBoardDrawer> {
  Future<void> _launchURL(String url,String path) async{
    final Uri uri = Uri.https(url,path);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )){
      throw "Cannot launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Welcome Devotee!!',style: TextStyle(fontSize: 25,color: Colors.white),),
            accountEmail: Text('',style: TextStyle(color: Colors.white),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('asset/images/Applogo1.png',fit: BoxFit.contain),),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(image: AssetImage('asset/images/bhagavadgita-6.jpg'),fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Buy Books'),
              onTap: () {
              _launchURL('iskconbooks.com','');
              },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourites'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Donations'),
            onTap: () {
                _launchURL('vedabase.io','/en/donate/');
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text('Review/Bug Report'),
            onTap: () {
              _launchURL('forms.gle','/MvuyD7qSUryabvxp6');
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => About_Us()));
            },
          ),
        ],
      ),
    );
  }
}
