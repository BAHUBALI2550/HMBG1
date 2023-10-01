import 'package:flutter/material.dart';
import 'package:hmbg/favourite_screen.dart';

class DashBoardDrawer extends StatelessWidget {
  const DashBoardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('hs49271.rt@gmail.com'),
            accountEmail: Text('+91-8542224372'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('asset/images/inspire_logo.png')),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(image: AssetImage('asset/images/bhagavadgita-6.jpg'),fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Buy Books'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Quiz_Main()),
              //   );
              // },
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
            // onTap: () {
            //   Navigator.push(context,MaterialPageRoute(builder: (context) => Quiz_Main()));
            // },
          ),
        ],
      ),
    );
  }
}
