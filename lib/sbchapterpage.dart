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

  // List<int> versecount = [23,34,44,33,40,38,58,52,49,36,39,36,60,44,51,36,45,50,40];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            dashboardContainer('asset/images/newdashboard.jpg'),
            Container(
                margin: EdgeInsets.only(top: 270),
                child: ListView.builder(
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
            Image.network('https://www.bvashram.org/wp-content/uploads/2005/11/bhagavatam-01.jpg'),
            Container(
              margin: EdgeInsets.only(top: 255,left: 300),
              child: InkWell(
                onTap: (){

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