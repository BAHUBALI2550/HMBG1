import 'package:flutter/material.dart';
import 'package:hmbg/SBShlokaPage.dart';
import 'dashboard.dart';

class SBVerse_Show extends StatefulWidget{
  @override
  final int cantonum;
  final int cnum;
  final int verse_count;
  SBVerse_Show(this.cantonum,this.cnum,this.verse_count);
  State<SBVerse_Show> createState() => _SBVerse_ShowState(cantonum,cnum,verse_count);
}

class _SBVerse_ShowState extends State<SBVerse_Show> {

  final int cantonum;
  final int cnum;
  final int verse_count;
  _SBVerse_ShowState(this.cantonum,this.cnum,this.verse_count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VedicGranth',style: TextStyle(fontFamily: 'Samarkan',fontWeight: FontWeight.bold),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SBShlokaPage(cantonum,cnum,index+1)));
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