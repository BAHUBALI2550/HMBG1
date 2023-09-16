import 'package:flutter/material.dart';
import 'package:hmbg/sbchapterpage.dart';

import 'dashboard.dart';


class ReadBhagvatam extends StatefulWidget {
  const ReadBhagvatam({super.key});

  @override
  State<ReadBhagvatam> createState() => _ReadBhagvatamState();
}

class _ReadBhagvatamState extends State<ReadBhagvatam> {

  List<dynamic> BookCoversb = ['https://vedabase.io/media/images/en-sb1_Hpiu763.2e16d0ba.fill-240x380.jpg',
  'https://vedabase.io/media/images/en-sb2_T11QpEG.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb3_9LD2lgB.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb4_YOa51lc.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb5_7HR2CMD.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb6_5GGUyRI.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb7_Qj96zoT.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb8_c8Ftg8r.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb9_y6KwAco.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb10_fRcpqhe.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb11_znj3eFz.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb12_ExRZtMS.2e16d0ba.fill-240x380.jpg',
  ];

  List<dynamic> CantoName = ['Canto 1: Creation','Canto 2: The Cosmic Manifestation','Canto 3: The Status Quo',
    'Canto 4: The Creation of the Fourth Order','Canto 5: The Creative Impetus','Canto 6: Prescribed Duties for Mankind',
    'Canto 7: The Science of God','Canto 8: Withdrawal of the Cosmic Creations','Canto 9: Liberation',
    'Canto 10: The Summum Bonum','Canto 11: General History','Canto 12: The Age of Deterioration',
  ];
  // List<List<String>> CantoChapterName = [{'Questions by the Sages','Divinity and Divine Service','Kṛṣṇa Is the Source of All Incarnations',
  // 'The Appearance of Śrī Nārada','Nārada’s Instructions on Śrīmad-Bhāgavatam for Vyāsadeva','Conversation Between Nārada and Vyāsadeva',
  // 'The Son of Droṇa Punished','Prayers by Queen Kuntī and Parīkṣit Saved','The Passing Away of Bhīṣmadeva in the Presence of Lord Kṛṣṇa',
  // 'Departure of Lord Kṛṣṇa for Dvārakā','Lord Kṛṣṇa’s Entrance into Dvārakā','Birth of Emperor Parīkṣit','Dhṛtarāṣṭra Quits Home','The Disappearance of Lord Kṛṣṇa',
  // 'The Pāṇḍavas Retire Timely','How Parīkṣit Received the Age of Kali','Punishment and Reward of Kali','Mahārāja Parīkṣit Cursed by a Brāhmaṇa Boy',
  // 'The Appearance of Śukadeva Gosvāmī'},
  //   {'jkhksahk','dsfs'},
  //   {'jkhksahk','dsfsb'},
  //   {'jkhksahk','dsfsd'},
  //   {'jkhksahk','dsffs'},
  //   {'jkhksahk','dsfsq'},
  //   {'jkhksahk','dsfsw'},
  //   {'jkhksahk','dsfse'},
  //   {'jkhksahk','dsfsr'},
  //   {'jkhksahk','dsfst'},
  //   {'jkhksahk','dsfsy'},
  //   {'jkhksahk','dsfsu'},
  // ];
  List<String> Canto1chapter = ['Questions by the Sages','Divinity and Divine Service','Kṛṣṇa Is the Source of All Incarnations',
    'The Appearance of Śrī Nārada','Nārada’s Instructions on Śrīmad-Bhāgavatam for Vyāsadeva','Conversation Between Nārada and Vyāsadeva',
    'The Son of Droṇa Punished','Prayers by Queen Kuntī and Parīkṣit Saved','The Passing Away of Bhīṣmadeva in the Presence of Lord Kṛṣṇa',
    'Departure of Lord Kṛṣṇa for Dvārakā','Lord Kṛṣṇa’s Entrance into Dvārakā','Birth of Emperor Parīkṣit','Dhṛtarāṣṭra Quits Home','The Disappearance of Lord Kṛṣṇa',
    'The Pāṇḍavas Retire Timely','How Parīkṣit Received the Age of Kali','Punishment and Reward of Kali','Mahārāja Parīkṣit Cursed by a Brāhmaṇa Boy',
    'The Appearance of Śukadeva Gosvāmī'];
  List<int> versecountcanto1 = [23,34,44,33,40,38,58,52,49,36,39,36,60,44,51,36,45,50,40];
  List<int> ChapterCount = [19,10,33,31,26,19,15,24,24,90,31,13];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/newdashboard.jpg'),
          SingleChildScrollView(
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Text('Srimad Bhagavatam',style: TextStyle(fontSize: 35,fontFamily: 'Samarkan',color: Colors.white),),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Container(
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SBChapterPage(Canto1chapter, index+1,versecountcanto1)));
                            },
                            child: BookCardsb(BookCoversb[index],'Canto ${index+1}')),
                      ),
                    );
                  },
                  itemCount: BookCoversb.length,),

              ),
            ],
        ),
          ),
    ],
      ),
    );
  }
}
class BookCardsb extends StatelessWidget {
  String url;
  String name;
  BookCardsb(this.url,this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(url)),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 2.0),
          width: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          height: 20,
          child: Text(name,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
