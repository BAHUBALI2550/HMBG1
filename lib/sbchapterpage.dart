import 'package:flutter/material.dart';
import 'package:hmbg/SB_versepage.dart';
import 'package:hmbg/readContinueRamayan.dart';

import 'dashboard.dart';

class SBChapterPage extends StatefulWidget {

  final List<String> CantoChapterName;
  final int cantonum;
  final List<int> versecount;
  SBChapterPage(this.CantoChapterName,this.cantonum,this.versecount);

  @override
  State<SBChapterPage> createState() => _SBChapterPageState(CantoChapterName as List<String>,cantonum,versecount as List<int>);
}

class _SBChapterPageState extends State<SBChapterPage> {
  final List<String> CantoChapterName;
  final int cantonum;
  final List<int> versecount;
  _SBChapterPageState(this.CantoChapterName,this.cantonum, this.versecount);

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
                    child: Image.asset('asset/images/bhagavatam-01.jpg'),
                  ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      child: ListView.builder(
                        padding: EdgeInsets.only(top:5),
                        shrinkWrap: true,
                        itemCount: CantoChapterName.length,
                        itemBuilder: (context,index){
                          return ListBody(
                            children: [
                              InkWell(
                                  onTap : () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SBVerse_Show(cantonum, index+1, versecount[index])));
                                  },
                                  child: PartContainer(name: CantoChapterName[index])),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                      )
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 260,left: 300),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SBVerse_Show(cantonum, 1, versecount[0])));
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