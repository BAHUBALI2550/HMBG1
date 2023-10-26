import 'package:flutter/material.dart';
import 'package:hmbg/ramayanaShloka.dart';
import 'dashboard.dart';

class RamayanaChapterShow extends StatefulWidget {
  final int cnum;
  final List<dynamic> ChapterList;
  const RamayanaChapterShow(this.cnum,this.ChapterList);

  @override
  State<RamayanaChapterShow> createState() => _RamayanaChapterShowState(cnum,ChapterList);
}

class _RamayanaChapterShowState extends State<RamayanaChapterShow> {
  final int cnum;
  final List<dynamic> ChapterList;
  _RamayanaChapterShowState(this.cnum,this.ChapterList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ramayana',style: TextStyle(fontFamily: 'Samarkan',fontWeight: FontWeight.bold),),
      ),
      body: Stack(
        children: [
          dashboardContainer('asset/images/newdashboard.jpg'),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 11),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Part-$cnum',style: TextStyle(color: Colors.white,fontSize: 45),textAlign: TextAlign.justify,)),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: ListView.builder(
              // mainAxisSpacing: 11,crossAxisSpacing: 11,
              itemBuilder: (BuildContext context, index ) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/rkd/$cnum/${index+1}/")));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text(ChapterList[index],
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),textAlign: TextAlign.left,)),
                        )),
                  ),
                );
              },
              itemCount: ChapterList.length,
            ),
          )
        ],
      ),

    );
  }
}
