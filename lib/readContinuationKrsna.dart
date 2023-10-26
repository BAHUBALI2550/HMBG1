import 'package:flutter/material.dart';
import 'package:hmbg/ramayanaShloka.dart';
import 'package:hmbg/readContinueRamayan.dart';
import 'dashboard.dart';

class KrsnaPage extends StatefulWidget {
  const KrsnaPage({super.key});

  @override
  State<KrsnaPage> createState() => _KrsnaPageState();
}

class _KrsnaPageState extends State<KrsnaPage> {

  List<String> KrsnaPart = ['1: The Advent of Lord Kṛṣṇa','2: Prayers by the Demigods for Lord Kṛṣṇa in the Womb','3: The Birth of Lord Kṛṣṇa','4: Kaṁsa Begins His Persecutions',
  '5: The Meeting of Nanda and Vasudeva','6: Pūtanā Killed','7: The Salvation of Tṛṇāvarta','8: Vision of the Universal Form','9: Mother Yaśodā Binds Lord Kṛṣṇa',
  '10: The Deliverance of Nalakūvara and Maṇigrīva','11: Killing the Demons Vatsāsura and Bakāsura','12: The Killing of the Aghāsura Demon',
  '13: The Stealing of the Boys and Calves by Brahmā','14: Prayers Offered by Lord Brahmā to Lord Kṛṣṇa','15: The Killing of Dhenukāsura','16: Subduing Kāliya',
  '17: Extinguishing the Forest Fire','18: Killing the Demon Pralambāsura','19: Devouring the Forest Fire','20: Description of Autumn','21: The Gopīs Attracted by the Flute',
  '22: Stealing the Garments of the Unmarried Gopī Girls','23: Delivering the Wives of the Brāhmaṇas Who Performed Sacrifices','24: Worshiping Govardhana Hill','25: Devastating Rainfall in Vṛndāvana',
  '26: Wonderful Kṛṣṇa','27: Prayers by Indra, the King of Heaven','28: Releasing Nanda Mahārāja from the Clutches of Varuṇa','29: The Rāsa Dance: Introduction','30: Kṛṣṇa’s Hiding from the Gopīs',
  '31: Songs by the Gopīs','32: Kṛṣṇa Returns to the Gopīs','33: Description of the Rāsa Dance','34: Vidyādhara Liberated and the Demon Śaṅkhacūḍa Killed','35: The Gopīs’ Feelings of Separation',
  '36: Kaṁsa Sends Akrūra for Kṛṣṇa','37: Killing the Keśī Demon and Vyomāsura','38: Akrūra’s Arrival in Vṛndāvana','39: Akrūra’s Return Journey and His Vision of Viṣṇuloka Within the Yamunā River',
  '40: Prayers by Akrūra','41: Kṛṣṇa Enters Mathurā','42: The Breaking of the Bow in the Sacrificial Arena','43: The Killing of the Elephant Kuvalayāpīḍa','44: The Killing of Kaṁsa','45: Kṛṣṇa Recovers the Son of His Teacher',
  '46: Uddhava Visits Vṛndāvana','47: Delivery of the Message of Kṛṣṇa to the Gopīs','48: Kṛṣṇa Pleases His Devotees','49: Ill-motivated Dhṛtarāṣṭra',
  '50: Kṛṣṇa Erects the Dvārakā Fort','51: The Deliverance of Mucukunda','52: Kṛṣṇa, the Raṇacora','53: Kṛṣṇa Kidnaps Rukmiṇī','54: Kṛṣṇa Defeats All the Princes and Takes Rukmiṇī Home to Dvārakā',
  '55: Pradyumna Born to Kṛṣṇa and Rukmiṇī','56: The Story of the Syamantaka Jewel','57: The Killing of Satrājit and Śatadhanvā','58: Five Queens Married by Kṛṣṇa','59: The Deliverance of the Demon Bhaumāsura',
  '60: Talks Between Kṛṣṇa and Rukmiṇī','61: The Genealogy of the Family of Kṛṣṇa','62: The Meeting of Ūṣā and Aniruddha','63: Lord Kṛṣṇa Fights with Bāṇāsura','64: The Story of King Nṛga',
  '65: Lord Balarāma Visits Vṛndāvana','66: The Deliverance of Pauṇḍraka and the King of Kāśī','67: The Deliverance of Dvivida Gorilla','68: The Marriage of Sāmba','69: The Great Sage Nārada Visits the Different Homes of Lord Kṛṣṇa',
  '70: Lord Kṛṣṇa’s Daily Activities','71: Lord Kṛṣṇa in Indraprastha City','72: The Liberation of King Jarāsandha','73: Lord Kṛṣṇa Returns to the City of Hastināpura','74: The Deliverance of Śiśupāla',
  '75: Why Duryodhana Felt Insulted at the End of the Rājasūya Sacrifice','76: The Battle Between Śālva and Members of the Yadu Dynasty','77: The Deliverance of Śālva','78: The Killing of Dantavakra, Vidūratha and Romaharṣaṇa',
  '79: The Liberation of Balvala, and Lord Balarāma’s Touring the Sacred Places','80: The Meeting of Lord Kṛṣṇa with Sudāmā Brāhmaṇa','81: The Brāhmaṇa Sudāmā Blessed by Lord Kṛṣṇa','82: Lord Kṛṣṇa and Balarāma Meet the Inhabitants of Vṛndāvana',
  '83: Draupadī Meets the Queens of Kṛṣṇa','84: Sacrificial Ceremonies Performed by Vasudeva','85: Spiritual Instruction for Vasudeva, and the Return of the Six Dead Sons of Devakī by Lord Kṛṣṇa',
  '86: The Kidnapping of Subhadrā, and Lord Kṛṣṇa’s Visiting Śrutadeva and Bahulāśva','87: Prayers by the Personified Vedas','88: The Deliverance of Lord Śiva',
  '89: The Superexcellent Power of Kṛṣṇa','90: Summary Description of Lord Kṛṣṇa’s Pastimes'];
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
                  child: Image.asset('asset/images/krshna.jpg'),
                ),
                Expanded(
                  child: Container(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 5),
                            shrinkWrap: true,
                            itemCount: KrsnaPart.length,
                            itemBuilder: (context,index){
                              return ListBody(
                                  children: [
                                    InkWell(
                                        onTap:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka('https://vedabase.io/en/library/kb/${index+1}/')));
                                        },
                                        child: PartContainer(name: KrsnaPart[index])),
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
              margin: EdgeInsets.only(top: 255,left: 300),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RamayanaShloka("https://vedabase.io/en/library/kb/1/")));
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

