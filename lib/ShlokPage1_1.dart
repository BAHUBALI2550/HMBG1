import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hmbg/boxes/boxes.dart';
import 'package:hmbg/models/favourite_model.dart';
import 'dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class ShlokPage1_1 extends StatefulWidget{
  final int cnum;
  final int verse_num;
  ShlokPage1_1(this.cnum,this.verse_num);
  State<ShlokPage1_1> createState() => ShlokPage1_1State(cnum,verse_num);
}
class ShlokPage1_1State extends State<ShlokPage1_1> with TickerProviderStateMixin {
  final int cnum;
  final int verse_num;
  ShlokPage1_1State(this.cnum,this.verse_num);

  late AnimationController controller;

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
 late   bool onclick= false;
  List<Article> articles=[];
  String? extractData(String input, String startWord, String endWord) {
    final startIndex = input.indexOf(startWord);
    final endIndex = input.indexOf(endWord, startIndex + startWord.length);

    if (startIndex != -1 && endIndex != -1) {
      final extractedData = input.substring(startIndex + startWord.length, endIndex);
      return extractedData;
    } else {
      return null; // Start or end word not found
    }
  }
  String? getUrlString(int a,int b){
    String Uurl='';
    if(a == 1 && b >= 16 && b <= 18){
      Uurl='https://vedabase.io/en/library/bg/1/16-18/';
    }
    else if(a == 1 && b >= 21 && b <= 22){
      Uurl='https://vedabase.io/en/library/bg/1/21-22/';
    }
    else if(a == 1 && b >= 32 && b <= 35){
      Uurl='https://vedabase.io/en/library/bg/1/32-35/';
    }
    else if(a == 1 && b >= 37 && b <= 38){
      Uurl='https://vedabase.io/en/library/bg/1/37-38/';
    }
    else if(a == 2 && b >= 42 && b <= 43){
      Uurl='https://vedabase.io/en/library/bg/2/42-43/';
    }
    else if(a == 5 && b >= 8 && b <= 9){
      Uurl='https://vedabase.io/en/library/bg/5/8-9/';
    }
    else if(a == 5 && b >= 27 && b <= 28){
      Uurl='https://vedabase.io/en/library/bg/5/27-28/';
    }
    else if(a == 6 && b >= 11 && b <= 12){
      Uurl='https://vedabase.io/en/library/bg/6/11-12/';
    }
    else if(a == 6 && b >= 13 && b <= 14){
      Uurl='https://vedabase.io/en/library/bg/6/13-14/';
    }
    else if(a == 6 && b >= 20 && b <= 23){
      Uurl='https://vedabase.io/en/library/bg/6/20-23/';
    }
    else if(a == 10 && b >= 4 && b <= 5){
      Uurl='https://vedabase.io/en/library/bg/10/4-5/';
    }
    else if(a == 10 && b >= 12 && b <= 13){
      Uurl='https://vedabase.io/en/library/bg/10/12-13/';
    }
    else if(a == 11 && b >= 10 && b <= 11){
      Uurl='https://vedabase.io/en/library/bg/11/10-11/';
    }
    else if(a == 11 && b >= 26 && b <= 27){
      Uurl='https://vedabase.io/en/library/bg/11/26-27/';
    }
    else if(a == 11 && b >= 41 && b <= 42){
      Uurl='https://vedabase.io/en/library/bg/11/41-42/';
    }
    else if(a == 12 && b >= 3 && b <= 4){
      Uurl='https://vedabase.io/en/library/bg/12/3-4/';
    }
    else if(a == 12 && b >= 6 && b <= 7){
      Uurl='https://vedabase.io/en/library/bg/12/6-7/';
    }
    else if(a == 12 && b >= 13 && b <= 14){
      Uurl='https://vedabase.io/en/library/bg/12/13-14/';
    }
    else if(a == 12 && b >= 18 && b <= 19){
      Uurl='https://vedabase.io/en/library/bg/12/18-19/';
    }
    else if(a == 13 && b >= 1 && b <= 2){
      Uurl='https://vedabase.io/en/library/bg/13/1-2/';
    }
    else if(a == 13 && b >= 6 && b <= 7){
      Uurl='https://vedabase.io/en/library/bg/13/6-7/';
    }
    else if(a == 13 && b >= 8 && b <= 12){
      Uurl='https://vedabase.io/en/library/bg/13/8-12/';
    }
    else if(a == 14 && b >= 22 && b <= 25){
      Uurl='https://vedabase.io/en/library/bg/14/22-25/';
    }
    else if(a == 15 && b >= 3 && b <= 4){
      Uurl='https://vedabase.io/en/library/bg/15/3-4/';
    }
    else if(a == 16 && b >= 1 && b <= 3){
      Uurl='https://vedabase.io/en/library/bg/16/1-3/';
    }
    else if(a == 16 && b >= 11 && b <= 12){
      Uurl='https://vedabase.io/en/library/bg/16/11-12/';
    }
    else if(a == 16 && b >= 13 && b <= 15){
      Uurl='https://vedabase.io/en/library/bg/16/13-15/';
    }
    else if(a == 17 && b >= 5 && b <= 6){
      Uurl='https://vedabase.io/en/library/bg/17/5-6/';
    }
    else if(a == 17 && b >= 26 && b <= 27){
      Uurl='https://vedabase.io/en/library/bg/17/26-27/';
    }
    else if(a == 18 && b >= 51 && b <= 53){
      Uurl='https://vedabase.io/en/library/bg/18/51-53/';
    }
    else{
      Uurl='https://vedabase.io/en/library/bg/$a/$b/';
    }
    return Uurl;
  }
  String? getAudioUrlString(int bgChapterNum, int bgShlokaNum){
    if(bgChapterNum<10 && bgShlokaNum<10){
      if(bgChapterNum == 1 && bgShlokaNum >= 4 && bgShlokaNum <= 6)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_004-006.mp3";
      }
      else if(bgChapterNum == 3 && bgShlokaNum >= 1 && bgShlokaNum <= 2)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/003_001-002.mp3";
      }
      else if(bgChapterNum == 5 && bgShlokaNum >= 8 && bgShlokaNum <= 9)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/005_008-009.mp3";
      }
      else if(bgChapterNum == 8 && bgShlokaNum >= 1 && bgShlokaNum <= 2)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/008_001-002.mp3";
      }
      else if(bgChapterNum == 8 && bgShlokaNum >= 9)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/008_009-010.mp3";
      }
      else if(bgChapterNum == 9 && bgShlokaNum >= 7 && bgShlokaNum <= 8)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/009_007-008.mp3";
      }
      else Finalurl="https://www.holy-bhagavad-gita.org/public/audio/00${bgChapterNum}_00$bgShlokaNum.mp3";
    }
    else if(bgChapterNum>=10 && bgShlokaNum>=10){
      if(bgChapterNum == 10 && bgShlokaNum >= 12 && bgShlokaNum <= 13)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/010_012-013.mp3";
      }
      else if(bgChapterNum == 10 && bgShlokaNum >= 16 && bgShlokaNum <= 17)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/010_016-017.mp3";
      }
      else if(bgChapterNum == 11 && bgShlokaNum >= 10 && bgShlokaNum <= 11)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/011_010-011.mp3";
      }
      else if(bgChapterNum == 11 && bgShlokaNum >= 26 && bgShlokaNum <= 27)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/011_026-027.mp3";
      }
      else if(bgChapterNum == 11 && bgShlokaNum >= 28 && bgShlokaNum <= 29)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/011_028-029.mp3";
      }
      else if(bgChapterNum == 11 && bgShlokaNum >= 41 && bgShlokaNum <= 42)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/011_041-042.mp3";
      }
      else if(bgChapterNum == 11 && bgShlokaNum >= 52 && bgShlokaNum <= 53)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/011_052-053.mp3";
      }
      else if(bgChapterNum == 12 && bgShlokaNum >= 13 && bgShlokaNum <= 14)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/012_013-014.mp3";
      }
      else if(bgChapterNum == 12 && bgShlokaNum >= 18 && bgShlokaNum <= 19)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/012_018-019.mp3";
      }
      else if(bgChapterNum == 13 && bgShlokaNum >= 10 && bgShlokaNum <= 12)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/013_010-012.mp3";
      }
      else if(bgChapterNum == 14 && bgShlokaNum >= 11 && bgShlokaNum <= 13)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/014_011-013.mp3";
      }
      else if(bgChapterNum == 14 && bgShlokaNum >= 14 && bgShlokaNum <= 15)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/014_014-015.mp3";
      }
      else if(bgChapterNum == 14 && bgShlokaNum >= 22 && bgShlokaNum <= 23)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/014_022-023.mp3";
      }
      else if(bgChapterNum == 14 && bgShlokaNum >= 24 && bgShlokaNum <= 25)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/014_024-025.mp3";
      }
      else if(bgChapterNum == 16 && bgShlokaNum >= 13 && bgShlokaNum <= 15)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/016_013-015.mp3";
      }
      else if(bgChapterNum == 16 && bgShlokaNum >= 19 && bgShlokaNum <= 20)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/016_019-020.mp3";
      }
      else if(bgChapterNum == 17 && bgShlokaNum >= 26 && bgShlokaNum <= 27)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/017_026-027.mp3";
      }
      else if(bgChapterNum == 18 && bgShlokaNum >= 15 && bgShlokaNum <= 16)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/018_015-016.mp3";
      }
      else if(bgChapterNum == 18 && bgShlokaNum >= 51 && bgShlokaNum <= 53)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/018_051-053.mp3";
      }
      else Finalurl="https://www.holy-bhagavad-gita.org/public/audio/0${bgChapterNum}_0$bgShlokaNum.mp3";
    }
    else if(bgChapterNum<10 && bgShlokaNum>=10){
      if(bgChapterNum == 1 && bgShlokaNum >= 16 && bgShlokaNum <= 18)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_016-018.mp3";
      }
      else if(bgChapterNum == 1 && bgShlokaNum >= 21 && bgShlokaNum <= 22)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_021-022.mp3";
      }
      else if(bgChapterNum == 1 && bgShlokaNum >= 29 && bgShlokaNum <= 31)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_029-031.mp3";
      }
      else if(bgChapterNum == 1 && bgShlokaNum >= 32 && bgShlokaNum <= 33)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_032-033.mp3";
      }
      else if(bgChapterNum == 1 && bgShlokaNum >= 34 && bgShlokaNum <= 35)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/001_034-035.mp3";
      }
      else if(bgChapterNum == 2 && bgShlokaNum >= 42 && bgShlokaNum <= 43)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/002_042-043.mp3";
      }
      else if(bgChapterNum == 3 && bgShlokaNum >= 20 && bgShlokaNum <= 21)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/003_020-021.mp3";
      }
      else if(bgChapterNum == 4 && bgShlokaNum >= 29 && bgShlokaNum <= 30)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/004_029-030.mp3";
      }
      else if(bgChapterNum == 5 && bgShlokaNum >= 27 && bgShlokaNum <= 28)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/005_027-028.mp3";
      }
      else if(bgChapterNum == 6 && bgShlokaNum >= 12 && bgShlokaNum <= 13)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/006_012-013.mp3";
      }
      else if(bgChapterNum == 6 && bgShlokaNum >= 24 && bgShlokaNum <= 25)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/006_024-025.mp3";
      }
      else if(bgChapterNum == 6 && bgShlokaNum >= 41 && bgShlokaNum <= 42)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/006_041-042.mp3";
      }
      else if(bgChapterNum == 8 && bgShlokaNum >= 10)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/008_009-010.mp3";
      }
      else if(bgChapterNum == 8 && bgShlokaNum >= 23 && bgShlokaNum <= 26)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/008_023-026.mp3";
      }
      else if(bgChapterNum == 9 && bgShlokaNum >= 16 && bgShlokaNum <= 17)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/009_016-017.mp3";
      }
      else Finalurl="https://www.holy-bhagavad-gita.org/public/audio/00${bgChapterNum}_0$bgShlokaNum.mp3";
    }
    else{
      if(bgChapterNum == 10 && bgShlokaNum >= 4 && bgShlokaNum <= 5)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/010_004-005.mp3";
      }
      else if(bgChapterNum == 12 && bgShlokaNum >= 3 && bgShlokaNum <= 4)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/012_003-004.mp3";
      }
      else if(bgChapterNum == 12 && bgShlokaNum >= 6 && bgShlokaNum <= 7)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/012_006-007.mp3";
      }
      else if(bgChapterNum == 13 && bgShlokaNum >= 8 && bgShlokaNum <= 9)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/013_008-012.mp3";
      }
      else if(bgChapterNum == 14 && bgShlokaNum >= 3 && bgShlokaNum <= 4)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/014_003-004.mp3";
      }
      else if(bgChapterNum == 15 && bgShlokaNum >= 3 && bgShlokaNum <= 4)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/015_003-004.mp3";
      }
      else if(bgChapterNum == 16 && bgShlokaNum >= 1 && bgShlokaNum <= 3)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/016_001-003.mp3";
      }
      else if(bgChapterNum == 17 && bgShlokaNum >= 5 && bgShlokaNum <= 6)
      {
        Finalurl="https://www.holy-bhagavad-gita.org/public/audio/017_005-006.mp3";
      }
      else Finalurl="https://www.holy-bhagavad-gita.org/public/audio/0${bgChapterNum}_00$bgShlokaNum.mp3";
    }
    return Finalurl;
  }
  Future getWebsiteData(int i,int j) async {
    int bgChapterNum = i;
    int bgShlokaNum = j;
    String? Translation ="";
    String? Purport ="";
    Finalurl = getAudioUrlString(bgChapterNum, bgShlokaNum)!;
    final url=Uri.parse(getUrlString(bgChapterNum, bgShlokaNum)!);
    final response= await http.get(url);
    dom.Document html=dom.Document.html(response.body);
    final ttle=html
        .querySelectorAll(' #content >div ')
        .map((e) => e.text)
        .toString();
    String? title=extractData(ttle, "(", "Devanagari");
    String? Devanagri = extractData(ttle, "Devanagari", " Text");
    String? Text = extractData(ttle, "Text", " Synonyms");
    String? Synonyms = extractData(ttle, "Synonyms", " Translation");
    Purport = extractData(ttle, "Purport", " )");
    if(Purport == null){
      Translation = extractData(ttle, "Translation", " )");
      Purport = "No Purport";
    }else{
      Translation = extractData(ttle, "Translation", " Purport");
    }
    text = ttle;
    setState(() {
      articles=List.generate(ttle.length,
              (index) => Article(
            titles: title?.replaceAll("  ", "").replaceAll("\n", ""),
            devnagri: Devanagri?.replaceAll("  ", "").replaceAll("\n", "").replaceAll(" ।", "।\n"),
            verse_text: Text?.replaceAll("  ", "").replaceAll("\n", ""),
            translation_title: Synonyms?.replaceAll("  ", "").replaceAll("\n", ""),
            translation: Translation?.replaceAll("  ", "").replaceAll("\n", ""),
            // purput_tile: purpot_title,
            purpot: Purport?.replaceAll("  ", "").replaceAll("\n", ""),
          ));
    });
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    getWebsiteData(cnum,verse_num);
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    controller.dispose();
    super.dispose();
  }

  String Finalurl="";
  String text = "";

  @override
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HMBG'),
        ),
        body: Stack(
          children: [
            dashboardContainer('asset/images/newbackground4.png'),
            text == ""?
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Loading ...',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 30),
                    CircularProgressIndicator(
                      value: controller.value,
                      semanticsLabel: 'Circular progress indicator',
                    ),
                  ],
                ),
              ),
            ):
            ListView.builder(itemCount:articles.length > 1 ? 1:articles.length,itemBuilder: (context,index){
              final article=articles[index];
              return ListBody(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.titles!,textAlign: TextAlign.center
                      ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Text("Devanagri",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.devnagri!,textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.w600,fontSize: 20,fontFamily: 'Lora')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.verse_text!,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'Lora')),
                  ),
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
                            String url = Finalurl;
                            await audioPlayer.play(UrlSource(url));
                          }
                        },
                      ),
                    ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Synonyms",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.translation_title!,textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Lora')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Translation",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.translation!,textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Lora')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Purport",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(article.purpot!,textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Lora')),
                  ),
                ],
              );

            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: (){
                        final data = FavouriteModel(book: 'BG', cantoNum: 1,chapterNum: cnum, shlokaNum: verse_num,image: 'https://vedabase.io/media/images/en-bg_34MulJK.2e16d0ba.fill-160x254.jpg',);
                        final box = Boxes.getData();
                        box.add(data);
                        // data.save();
                        print(box);
                        setState(() {
                          if(onclick==false)
                          onclick=true;
                          else{
                            onclick=false;
                          }
                        });

                  },
                  child: CircleAvatar(
                    radius: 25,
                    child: Icon(onclick==true ?Icons.favorite_sharp:Icons.favorite_outline,size: 35,),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

}
class Article {
  late final String? titles;
  late final String? devnagri;
  late final String? verse_text;
  late final String? translation_title;
  late final String? translation;
  // late final String? purput_tile;
  late final String? purpot;
  Article({
    required this.titles,
    required this.devnagri,
    required this.verse_text,
    required this.translation_title,
    required this.translation,
    // required this.purput_tile,
    required this.purpot,
  });
}
