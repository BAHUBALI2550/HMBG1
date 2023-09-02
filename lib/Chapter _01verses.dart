import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmbg/dashboard.dart';

import 'ShlokPage1_1.dart';


class Verse_Show extends StatefulWidget{
  @override
  final int cnum;
  final int verse_count;
  Verse_Show(this.cnum,this.verse_count);
  State<Verse_Show> createState() => _Verse_ShowState(cnum,verse_count);
}

class _Verse_ShowState extends State<Verse_Show> {

  final int cnum;
  final int verse_count;
  _Verse_ShowState(this.cnum,this.verse_count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HMBG'),
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
                  child: Text('Chapter-$cnum',style: TextStyle(color: Colors.white,fontSize: 45),)),
              // GridView.count(crossAxisCount: 5,
              // children: [
              //   Container(
              //     width: 20,
              //     height: 20,
              //     color: Colors.black.withOpacity(0.5),
              //   ),
              // ],
              // )
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              // mainAxisSpacing: 11,crossAxisSpacing: 11,
              itemBuilder: (BuildContext context, index ) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShlokPage1_1(cnum,index+1)));
                  },
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: grids(index+1),
                  ),
                ),
              );
            },
              itemCount: verse_count,
    ),
          )
        ],
      ),

    );
  }
}
class grids extends StatelessWidget{
  var num;
  grids(this.num);
  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 10,
          height: 10,
          color: Colors.black.withOpacity(0.5),
          child: Center(child: Text('$num',style: TextStyle(color: Colors.white,fontSize: 25),)),
    );
  }
  
}
