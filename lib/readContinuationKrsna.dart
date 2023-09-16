import 'package:flutter/material.dart';
import 'package:hmbg/readContinueRamayan.dart';
import 'dashboard.dart';

class KrsnaPage extends StatefulWidget {
  const KrsnaPage({super.key});

  @override
  State<KrsnaPage> createState() => _KrsnaPageState();
}

class _KrsnaPageState extends State<KrsnaPage> {

  List<String> KrsnaPart = ['The Advent of Lord Kṛṣṇa','Prayers by the Demigods for Lord Kṛṣṇa in the Womb','The Birth of Lord Kṛṣṇa','Kaṁsa Begins His Persecutions',
  'The Meeting of Nanda and Vasudeva','Pūtanā Killed','The Salvation of Tṛṇāvarta','Vision of the Universal Form','Mother Yaśodā Binds Lord Kṛṣṇa',
  'The Deliverance of Nalakūvara and Maṇigrīva','Killing the Demons Vatsāsura and Bakāsura','The Killing of the Aghāsura Demon',
  'The Stealing of the Boys and Calves by Brahmā','Prayers Offered by Lord Brahmā to Lord Kṛṣṇa','The Killing of Dhenukāsura','Subduing Kāliya',
  'Extinguishing the Forest Fire','Killing the Demon Pralambāsura','Devouring the Forest Fire',];
  List<String> KrsnaPartLink = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            dashboardContainer('asset/images/newdashboard.jpg'),
            Container(
                margin: EdgeInsets.only(top: 257),
                child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: KrsnaPart.length,
                      itemBuilder: (context,index){
                        return ListBody(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap:(){

                                  },
                                  child: PartContainer(name: KrsnaPart[index])),
                            ],
                        );
                      },
                    )
              ),
            Image.network('https://i.pinimg.com/736x/d1/72/ad/d172ad7ba835c66859ecdd0d50f0e47c.jpg'),
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

