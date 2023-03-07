import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hmbg/Synonym.dart';

import 'Synonyms.dart';
import 'dashboard.dart';

class ShlokPage1_1 extends StatefulWidget{
  @override
  State<ShlokPage1_1> createState() => ShlokPage1_1State();

}
class ShlokPage1_1State extends State<ShlokPage1_1>{
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state ==PlayerState.PLAYING;
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HMBG'),
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
                child:const NavigationDestination(icon: Icon(Icons.home_outlined,size: 40,), label: 'Search',selectedIcon: Icon(Icons.home),)),
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
            dashboardContainer('asset/images/dashboard.jpg'),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height:10,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('Bg.1.1',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('धृतराष्ट्र उवाच \nधर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सव: ।\n मामका: पाण्डवाश्चैव किमकुर्वत सञ्जय ॥ १ ॥',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('dhṛtarāṣṭra uvāca\ndharma-kṣetre kuru-kṣetre\nsamavetā yuyutsavaḥ\nmāmakāḥ pāṇḍavāś caiva\nkim akurvata sañjaya',style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,)),
                  Container(
                    alignment: Alignment.center,

                    child:
                    CircleAvatar(
                      radius: 35,
                      child: IconButton(
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                        ),
                        iconSize: 50,
                        onPressed: () async {
                          if(isPlaying){
                            await audioPlayer.pause();
                          }else{
                            String url = 'https://www.holy-bhagavad-gita.org/public/audio/001_001.mp3';
                            await audioPlayer.play(url);
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('Translation',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('Dhṛtarāṣṭra said: O Sañjaya, after my sons and the sons of Pāṇḍu assembled in the place of pilgrimage at Kurukṣetra, desiring to fight, what did they do?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('Purport',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Bhagavad-gītā is the widely read theistic science summarized in the Gītā-māhātmya (Glorification of the Gītā). There it says that one should read Bhagavad-gītā very scrutinizingly with the help of a person who is a devotee of Śrī Kṛṣṇa and try to understand it without personally motivated interpretations. The example of clear understanding is there in the Bhagavad-gītā itself, in the way the teaching is understood by Arjuna, who heard the Gītā directly from the Lord. If someone is fortunate enough to understand the Bhagavad-gītā in that line of disciplic succession, without motivated interpretation, then he surpasses all studies of Vedic wisdom, and all scriptures of the world. One will find in the Bhagavad-gītā all that is contained in other scriptures, but the reader will also find things which are not to be found elsewhere. That is the specific standard of the Gītā. It is the perfect theistic science because it is directly spoken by the Supreme Personality of Godhead, Lord Śrī Kṛṣṇa.\n\nThe topics discussed by Dhṛtarāṣṭra and Sañjaya, as described in the Mahābhārata, form the basic principle for this great philosophy. It is understood that this philosophy evolved on the Battlefield of Kurukṣetra, which is a sacred place of pilgrimage from the immemorial time of the Vedic age. It was spoken by the Lord when He was present personally on this planet for the guidance of mankind.\n\nThe word dharma-kṣetra (a place where religious rituals are performed) is significant because, on the Battlefield of Kurukṣetra, the Supreme Personality of Godhead was present on the side of Arjuna. Dhṛtarāṣṭra, the father of the Kurus, was highly doubtful about the possibility of his sons’ ultimate victory. In his doubt, he inquired from his secretary Sañjaya, “What did they do?” He was confident that both his sons and the sons of his younger brother Pāṇḍu were assembled in that Field of Kurukṣetra for a determined engagement of the war. Still, his inquiry is significant. He did not want a compromise between the cousins and brothers, and he wanted to be sure of the fate of his sons on the battlefield. Because the battle was arranged to be fought at Kurukṣetra, which is mentioned elsewhere in the Vedas as a place of worship – even for the denizens of heaven – Dhṛtarāṣṭra became very fearful about the influence of the holy place on the outcome of the battle. He knew very well that this would influence Arjuna and the sons of Pāṇḍu favorably, because by nature they were all virtuous. Sañjaya was a student of Vyāsa, and therefore, by the mercy of Vyāsa, Sañjaya was able to envision the Battlefield of Kurukṣetra even while he was in the room of Dhṛtarāṣṭra. And so, Dhṛtarāṣṭra asked him about the situation on the battlefield.\n\nBoth the Pāṇḍavas and the sons of Dhṛtarāṣṭra belong to the same family, but Dhṛtarāṣṭra’s mind is disclosed herein. He deliberately claimed only his sons as Kurus, and he separated the sons of Pāṇḍu from the family heritage. One can thus understand the specific position of Dhṛtarāṣṭra in his relationship with his nephews, the sons of Pāṇḍu. As in the paddy field the unnecessary plants are taken out, so it is expected from the very beginning of these topics that in the religious field of Kurukṣetra, where the father of religion, Śrī Kṛṣṇa, was present, the unwanted plants like Dhṛtarāṣṭra’s son Duryodhana and others would be wiped out and the thoroughly religious persons, headed by Yudhiṣṭhira, would be established by the Lord. This is the significance of the words dharma-kṣetre and kuru-kṣetre, apart from their historical and Vedic importance.',style: TextStyle(fontSize: 25,),textAlign: TextAlign.justify,),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                child: Icon(Icons.bookmark_add_outlined,size: 50,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 325,top: 10),
              child: CircleAvatar(
                radius: 30,
                child: Icon(Icons.favorite_outline,size: 50,),
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 320,left: 315),
              child: ElevatedButton(onPressed: (){

              }, child: Icon(Icons.navigate_next,size: 40,)),
            ),
            Container(

              margin: EdgeInsets.only(top: 320,left: 4),
              child: ElevatedButton(onPressed: (){

              }, child: Icon(Icons.navigate_before,size: 40,)),
            ),
            Container(

              margin: EdgeInsets.only(top: 650,left: 288),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Synonyms()));
              }, child: Text('Synonyms'),
              ),
            ),
          ],
        ),
      );
    }

}