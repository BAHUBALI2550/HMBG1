import 'package:flutter/material.dart';


class About_Us extends StatelessWidget {
  const About_Us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Us"),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  child: CircleAvatar(
                    child: ClipOval(child: Image.asset('asset/images/Applogo1.png'),),
                    radius: 55,
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text("VedicGranth",
                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'Samarkan'),),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text("VedicGranth is not just a reading app; it's your spiritual sanctuary in the digital age. Immerse yourself in the timeless wisdom of the Vedic scriptures with the VedicGranth app. This meticulously crafted platform is your gateway to the profound teachings of ancient Indian philosophy, where the sacred verses of the Bhagavad Gita, the enchanting stories of the Srimad Bhagavatam, and the epic saga of the Ramayana await your exploration.",
                      style: TextStyle(fontSize: 21,),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Container(
                  child: Text("Contributor's",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('asset/images/Himanshu.jpg'),
                              radius: 40,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Himanshu Singh'),
                            Text('himanshu.singh212025@gmail.com',style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('asset/images/Mayur2.jpeg'),
                              radius: 40,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Mayur Maru'),
                            Text('mayur17maru@gmail.com',style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
