import 'package:flutter/material.dart';
import 'package:hmbg/Chapter%20_01verses.dart';
import 'package:hmbg/dashboard.dart';

class ReadContinueBg extends StatefulWidget{
  const ReadContinueBg({super.key});

  @override
  State<ReadContinueBg> createState()  => ReadContinueState();

}
class ReadContinueState extends State<ReadContinueBg>{
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
                  child: Image.asset('asset/images/bhagavadgita-6.jpg'),
                ),
                Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            ChapterContainer(1,46),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(2,72),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(3,43),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(4,42),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(5,29),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(6,47),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(7,30),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(8,28),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(9,34),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(10,42),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(11,55),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(12,20),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(13,35),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(14,27),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(15,20),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(16,24),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(17,28),
                            const SizedBox(
                              height: 11,
                            ),
                            ChapterContainer(18,78),
                            const SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 255,left: 300),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Verse_Show(1,47)));
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('asset/images/playbutton1.jpg'),
                  radius: 40,

                ),
              ),
            )
      ]),
    );
  }

}

class ChapterContainer extends StatelessWidget{
  final int ind;
  final int verse_count;
ChapterContainer(this.ind,this.verse_count, {super.key});
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Verse_Show(ind,verse_count)));
          },
          child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.7),
              ),
              child: Center(child: Text('Chapter : $ind',
                style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)))
      );
  }

}