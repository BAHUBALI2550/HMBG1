import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Synonyms extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text("dhṛtarāṣṭraḥ uvāca — King Dhṛtarāṣṭra said; dharma-kṣetre — in the place of pilgrimage; kuru-kṣetre — in the place named Kurukṣetra; samavetāḥ — assembled; yuyutsavaḥ — desiring to fight; māmakāḥ — my party (sons); pāṇḍavāḥ — the sons of Pāṇḍu; ca — and; eva — certainly; kim — what; akurvata — did they do; sañjaya — O Sañjaya.",style: TextStyle(fontSize: 25),)
      ),
    );
  }

}