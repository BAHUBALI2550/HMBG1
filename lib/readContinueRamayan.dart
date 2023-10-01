import 'package:flutter/material.dart';
import 'package:hmbg/ramayanaChapter.dart';
import 'package:hmbg/ramayanaShloka.dart';
import 'dashboard.dart';

class ReadContinueRamayan extends StatefulWidget{
  @override
  State<ReadContinueRamayan> createState()  => ReadContinueState();

}
class ReadContinueState extends State<ReadContinueRamayan>{

  List<dynamic> Part1Chapter = ['King Daśaratha’s Longing','The Birth of Rāma','With the Sage Viśvāmitra','The Trial of Strength','Crooked Advice for Queen Kaikeyi','The King’s Heartbreak','Rāma Agrees to Depart','Grief and Fury','Sītā’s Plea','Sad Farewells'];
  List<dynamic> Part2Chapter = ['Into the Forest','Devastation in Ayodhya','Bharata’s Return','We Shall Bring Rāma Back','Rāma Remains Firm','The Forest Sages','The Rākṣasī Shurpanakha','Rāvaṇa’s Lust is Incited','The Kidnapping of Sītā','Rāma’s Terrible Discovery','Rāma Meets the Monkeys','The Search Begins','Hanumān Leaps to Lanka','Sītā is Found'];
  List<dynamic> Part3Chapter = ['The Army Sets Off','Panic in Lanka','Rāma Confronts the Ocean','Rāvaṇa’s Evil Trickery','The War Begins','Garuḍa to the Rescue','Rāvaṇa Enters the Fray','The Colossal Demon','Carnage Among the Rākṣasas','Rāma and Lakṣman Laid Low','Lakṣman Battles Indrajit','Rāvaṇa Exhibits His Prowess','The Final Battle','Sītā’s Ordeal','Back to Ayodhya'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            dashboardContainer('asset/images/newdashboard.jpg'),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset('asset/images/ramayana.jpeg'),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/prologue/")));},
                                child: PartContainer(name: 'Prologue')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaChapterShow(1,Part1Chapter)));},
                                child: PartContainer(name: 'Part One - Betrayed')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaChapterShow(2,Part2Chapter)));},
                                child: PartContainer(name: 'Part Two')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaChapterShow(3,Part3Chapter)));},
                                child: PartContainer(name: 'Part Three - War')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/epilogue/")));},
                                child: PartContainer(name: 'Epilogue')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/appendix-1-story-of-tiver-ganges/")));
                                },
                                child: PartAppendixContainer(name: 'Appendix 1: The Story of the River Ganges')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/appendix-2-history-of-visvamitra/")));},
                                child: PartAppendixContainer(name: 'Appendix 2: The History of Viśvāmitra')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/appendix-3-birth-and-history-of-hanuman/")));},
                                child: PartAppendixContainer(name: 'Appendix 3: The Birth and History of Hanumān')),
                            SizedBox(
                              height: 11,
                            ),
                            InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/appendix-4-benefits-of-reading-ramayana/")));},
                                child: PartAppendixContainer(name: 'Appendix 4: The Benefits of Reading Rāmayana')),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 255,left: 300),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/prologue/")));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/playbutton1.jpg'),
                  radius: 40,

                ),
              ),
            )
          ]),
    );
  }

}
class PartContainer extends StatelessWidget {
  final String name;
  const PartContainer({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
              alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(child: Text(name,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.center,)),
                ));
  }
}
class PartAppendixContainer extends StatelessWidget {
  final String name;
  const PartAppendixContainer({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black.withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(name,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.center,)),
        ));

  }
}
