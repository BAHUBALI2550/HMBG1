import 'package:flutter/material.dart';
import 'package:hmbg/ramayanaChapter.dart';
import 'package:hmbg/ramayanaShloka.dart';
import 'dashboard.dart';

class ReadContinueRamayan extends StatefulWidget{
  @override
  State<ReadContinueRamayan> createState()  => ReadContinueState();

}
class ReadContinueState extends State<ReadContinueRamayan>{

  List<dynamic> Part1Chapter = ['1: King Daśaratha’s Longing','2: The Birth of Rāma','3: With the Sage Viśvāmitra','4: The Trial of Strength','5: Crooked Advice for Queen Kaikeyi','6: The King’s Heartbreak','7: Rāma Agrees to Depart','8: Grief and Fury','9: Sītā’s Plea','10: Sad Farewells'];
  List<dynamic> Part2Chapter = ['1: Into the Forest','2: Devastation in Ayodhya','3: Bharata’s Return','4: We Shall Bring Rāma Back','5: Rāma Remains Firm','6: The Forest Sages','7: The Rākṣasī Shurpanakha','8: Rāvaṇa’s Lust is Incited','9: The Kidnapping of Sītā','10: Rāma’s Terrible Discovery','11: Rāma Meets the Monkeys','12: The Search Begins','13: Hanumān Leaps to Lanka','14: Sītā is Found'];
  List<dynamic> Part3Chapter = ['1: The Army Sets Off','2: Panic in Lanka','3: Rāma Confronts the Ocean','4: Rāvaṇa’s Evil Trickery','5: The War Begins','6: Garuḍa to the Rescue','7: Rāvaṇa Enters the Fray','8: The Colossal Demon','9: Carnage Among the Rākṣasas','10: Rāma and Lakṣman Laid Low','11: Lakṣman Battles Indrajit','12: Rāvaṇa Exhibits His Prowess','13: The Final Battle','14: Sītā’s Ordeal','15: Back to Ayodhya'];
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
