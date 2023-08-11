import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hmbg/Login_Page.dart';
import 'package:hmbg/Quiz_Main.dart';
import 'package:hmbg/dashboard.dart';

class DashBoardDrawer extends StatelessWidget {
  const DashBoardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Amrit'),
            accountEmail: Text('testing'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('asset/images/inspire_logo.png')),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(image: AssetImage('asset/images/bhagavadgita-6.jpg'),fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz_Main()),
                );
              },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourite'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz_Main()),
              );
            },
          ),
        ],
      ),
    );
  }
}
