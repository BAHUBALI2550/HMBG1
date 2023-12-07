import 'package:flutter/material.dart';
import 'package:hmbg/sbchapterpage.dart';

import 'dashboard.dart';


class ReadBhagvatam extends StatefulWidget {
  const ReadBhagvatam({super.key});

  @override
  State<ReadBhagvatam> createState() => _ReadBhagvatamState();
}

class _ReadBhagvatamState extends State<ReadBhagvatam> {

  List<dynamic> BookCoversb = ['https://vedabase.io/media/images/en-sb1_Hpiu763.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb2_T11QpEG.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb3_9LD2lgB.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb4_YOa51lc.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb5_7HR2CMD.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb6_5GGUyRI.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb7_Qj96zoT.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb8_c8Ftg8r.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb9_y6KwAco.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb10_fRcpqhe.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb11_znj3eFz.2e16d0ba.fill-240x380.jpg',
    'https://vedabase.io/media/images/en-sb12_ExRZtMS.2e16d0ba.fill-240x380.jpg',
  ];

  List<dynamic> CantoName = ['Canto 1: Creation','Canto 2: The Cosmic Manifestation','Canto 3: The Status Quo',
    'Canto 4: The Creation of the Fourth Order','Canto 5: The Creative Impetus','Canto 6: Prescribed Duties for Mankind',
    'Canto 7: The Science of God','Canto 8: Withdrawal of the Cosmic Creations','Canto 9: Liberation',
    'Canto 10: The Summum Bonum','Canto 11: General History','Canto 12: The Age of Deterioration',
  ];
  List<List<String>> CantoChapterName = [['1: Questions by the Sages','2: Divinity and Divine Service','3: Kṛṣṇa Is the Source of All Incarnations',
  '4: The Appearance of Śrī Nārada','5: Nārada’s Instructions on Śrīmad-Bhāgavatam for Vyāsadeva','6: Conversation Between Nārada and Vyāsadeva',
  '7: The Son of Droṇa Punished','8: Prayers by Queen Kuntī and Parīkṣit Saved','9: The Passing Away of Bhīṣmadeva in the Presence of Lord Kṛṣṇa',
  '10: Departure of Lord Kṛṣṇa for Dvārakā','11: Lord Kṛṣṇa’s Entrance into Dvārakā','12: Birth of Emperor Parīkṣit','13: Dhṛtarāṣṭra Quits Home','14: The Disappearance of Lord Kṛṣṇa',
  '15: The Pāṇḍavas Retire Timely','16: How Parīkṣit Received the Age of Kali','17: Punishment and Reward of Kali','18: Mahārāja Parīkṣit Cursed by a Brāhmaṇa Boy',
  '19: The Appearance of Śukadeva Gosvāmī'],
    ['1: The First Step in God Realization','2: The Lord in the Heart','3: Pure Devotional Service: The Change in Heart','4: The Process of Creation',
    '5: The Cause of All Causes','6: Puruṣa-sūkta Confirmed','7: Scheduled Incarnations with Specific Functions','8: Questions by King Parīkṣit',
    '9: Answers by Citing the Lord’s Version','10: Bhāgavatam Is the Answer to All Questions'],
    ['1: Questions by Vidura','2: Remembrance of Lord Kṛṣṇa','3: The Lord’s Pastimes Out of Vṛndāvana','4: Vidura Approaches Maitreya','5: Vidura’s Talks with Maitreya','6: Creation of the Universal Form','7: Further Inquires by Vidura','8: Manifestation of Brahmā from Garbhodakaśāyī Viṣṇu',
    '9: Brahmā’s Prayers for Creative Energy','10: Divisions of the Creation','11: Calculation of Time, from the Atom','12: Creation of the Kumāras and Others','13: The Appearance of Lord Varāha','14: Pregnancy of Diti in the Evening','15: Description of the Kingdom of God',
    '16: The Two Doorkeepers of Vaikuṇṭha, Jaya and Vijaya, Cursed by the Sages','17: Victory of Hiraṇyākṣa Over All the Directions of the Universe','18: The Battle Between Lord Boar and the Demon Hiraṇyākṣa','19: The Killing of the Demon Hiraṇyākṣa','20: Conversation Between Maitreya and Vidura',
    '21: Conversation Between Manu and Kardama','22: The Marriage of Kardama Muni and Devahūti','23: Devahūti’s Lamentation','24: The Renunciation of Kardama Muni','25: The Glories of Devotional Service','26: Fundamental Principles of Material Nature','27: Understanding Material Nature',
    '28: Kapila’s Instructions on the Execution of Devotional Service','29: Explanation of Devotional Service by Lord Kapila','30: Description by Lord Kapila of Adverse Fruitive Activities','31: Lord Kapila’s Instructions on the Movements of the Living Entities','32: Entanglement in Fruitive Activities','33: Activities of Kapila'],
    ['1: Genealogical Table of the Daughters of Manu','2: Dakṣa Curses Lord Śiva','3: Talks Between Lord Śiva and Satī','4: Satī Quits Her Body','5: Frustration of the Sacrifice of Dakṣa','6: Brahmā Satisfies Lord Śiva','7: The Sacrifice Performed by Dakṣa','8: Dhruva Mahārāja Leaves Home for the Forest',
    '9: Dhruva Mahārāja Returns Home','10: Dhruva Mahārāja’s Fight with the Yakṣas','11: Svāyambhuva Manu Advises Dhruva Mahārāja to Stop Fighting','12: Dhruva Mahārāja Goes Back to Godhead','13: Description of the Descendants of Dhruva Mahārāja','14: The Story of King Vena',
    '15: King Pṛthu’s Appearance and Coronation','16: Praise of King Pṛthu by the Professional Reciters','17: Mahārāja Pṛthu Becomes Angry at the Earth','18: Pṛthu Mahārāja Milks the Earth Planet','19: King Pṛthu’s One Hundred Horse Sacrifices','20: Lord Viṣṇu’s Appearance in the Sacrificial Arena of Mahārāja Pṛthu',
    '21: Instructions by Mahārāja Pṛthu','22: Pṛthu Mahārāja’s Meeting with the Four Kumāras','23: Mahārāja Pṛthu’s Going Back Home','24: Chanting the Song Sung by Lord Śiva','25: The Descriptions of the Characteristics of King Purañjana','26: King Purañjana Goes to the Forest to Hunt, and His Queen Becomes Angry',
    '27: Attack by Caṇḍavega on the City of King Purañjana; the Character of Kālakanyā','28: Purañjana Becomes a Woman in the Next Life','29: Talks Between Nārada and King Prācīnabarhi','30: The Activities of the Pracetās','31: Nārada Instructs the Pracetās'],
    ['1: The Activities of Mahārāja Priyavrata','2: The Activities of Mahārāja Āgnīdhra','3: Ṛṣabhadeva’s Appearance in the Womb of Merudevī, the Wife of King Nābhi','4: The Characteristics of Ṛṣabhadeva, the Supreme Personality of Godhead','5: Lord Ṛṣabhadeva’s Teachings to His Sons','6: The Activities of Lord Ṛṣabhadeva',
    '7: The Activities of King Bharata','8: A Description of the Character of Bharata Mahārāja','9: The Supreme Character of Jaḍa Bharata','10: The Discussion Between Jaḍa Bharata and Mahārāja Rahūgaṇa','11: Jaḍa Bharata Instructs King Rahūgaṇa','12: Conversation Between Mahārāja Rahūgaṇa and Jaḍa Bharata',
    '13: Further Talks Between King Rahūgaṇa and Jaḍa Bharata','14: The Material World as the Great Forest of Enjoyment','15: The Glories of the Descendants of King Priyavrata','16: A Description of Jambūdvīpa','17: The Descent of the River Ganges','18: The Prayers Offered to the Lord by the Residents of Jambūdvīpa',
    '19: A Description of the Island of Jambūdvīpa','20: Studying the Structure of the Universe','21: The Movements of the Sun','22: The Orbits of the Planets','23: The Śiśumāra Planetary Systems','24: The Subterranean Heavenly Planets','25: The Glories of Lord Ananta','26: A Description of the Hellish Planets'],
    ['1: The History of the Life of Ajāmila','2: Ajāmila Delivered by the Viṣṇudūtas','3: Yamarāja Instructs His Messengers','4: The Haṁsa-guhya Prayers Offered to the Lord by Prajāpati Dakṣa','5: Nārada Muni Cursed by Prajāpati Dakṣa','6: The Progeny of the Daughters of Dakṣa','7: Indra Offends His Spiritual Master, Bṛhaspati.',
    '8: The Nārāyaṇa-kavaca Shield','9: Appearance of the Demon Vṛtrāsura','10: The Battle Between the Demigods and Vṛtrāsura','11: The Transcendental Qualities of Vṛtrāsura','12: Vṛtrāsura’s Glorious Death','13: King Indra Afflicted by Sinful Reaction','14: King Citraketu’s Lamentation',
    '15: The Saints Nārada and Aṅgirā Instruct King Citraketu','16: King Citraketu Meets the Supreme Lord','17: Mother Pārvatī Curses Citraketu','18: Diti Vows to Kill King Indra','19: Performing the Puṁsavana Ritualistic Ceremony'],
    ['1: The Supreme Lord Is Equal to Everyone','2: Hiraṇyakaśipu, King of the Demons','3: Hiraṇyakaśipu’s Plan to Become Immortal','4: Hiraṇyakaśipu Terrorizes the Universe','5: Prahlāda Mahārāja, the Saintly Son of Hiraṇyakaśipu','6: Prahlāda Instructs His Demoniac Schoolmates','7: What Prahlāda Learned in the Womb',
    '8: Lord Nṛsiṁhadeva Slays the King of the Demons','9: Prahlāda Pacifies Lord Nṛsiṁhadeva with Prayers','10: Prahlāda, the Best Among Exalted Devotees','11: The Perfect Society: Four Social Classes','12: The Perfect Society: Four Spiritual Classes','13: The Behavior of a Perfect Person','14: Ideal Family Life','15: Instructions for Civilized Human Beings'],
    ['1: The Manus, Administrators of the Universe','2: The Elephant Gajendra’s Crisis','3: Gajendra’s Prayers of Surrender','4: Gajendra’s Prayers of Surrender','5: The Demigods Appeal to the Lord for Protection','6: The Demigods and Demons Declare a Truce','7: Lord Śiva Saves the Universe by Drinking Poison','8: The Churning of the Milk Ocean',
    '9: The Lord Incarnates as Mohinī-Mūrti','10: The Battle Between the Demigods and the Demons','11: King Indra Annihilates the Demons','12: The Mohinī-mūrti Incarnation Bewilders Lord Śiva','13: Description of Future Manus','14: The System of Universal Management','15: ali Mahārāja Conquers the Heavenly Planets',
    '16: Executing the Payo-vrata Process of Worship','17: The Supreme Lord Agrees to Become Aditi’s Son','18: Lord Vāmanadeva, the Dwarf Incarnation','19: Lord Vāmanadeva Begs Charity from Bali Mahārāja','20: Bali Mahārāja Surrenders the Universe','21: Bali Mahārāja Arrested by the Lord','22: Bali Mahārāja Surrenders His Life',
    '23: The Demigods Regain the Heavenly Planets','24: Matsya, the Lord’s Fish Incarnation'],
    ['1: King Sudyumna Becomes a Woman','2: The Dynasties of the Sons of Manu','3: The Marriage of Sukanyā and Cyavana Muni','4: Ambarīṣa Mahārāja Offended by Durvāsā Muni','5: Durvāsā Muni’s Life Spared','6: The Downfall of Saubhari Muni','7: The Descendants of King Māndhātā','8: The Sons of Sagara Meet Lord Kapiladeva','9: The Dynasty of Aṁśumān',
    '10: The Pastimes of the Supreme Lord, Rāmacandra','11: Lord Rāmacandra Rules the World','12: The Dynasty of Kuśa, the Son of Lord Rāmacandra','13: The Dynasty of Mahārāja Nimi','14: King Purūravā Enchanted by Urvaśī','15: Paraśurāma, the Lord’s Warrior Incarnation','16: Lord Paraśurāma Destroys the World’s Ruling Class',
    '17: The Dynasties of the Sons of Purūravā','18: King Yayāti Regains His Youth','19: King Yayāti Achieves Liberation','20: The Dynasty of Pūru','21: The Dynasty of Bharata','22: The Descendants of Ajamīḍha','23: The Dynasties of the Sons of Yayāti','24: Kṛṣṇa, the Supreme Personality of Godhead'],
    ['1: The Advent of Lord Kṛṣṇa: Introduction','2: Prayers by the Demigods for Lord Kṛṣṇa in the Womb','3: The Birth of Lord Kṛṣṇa','4: The Atrocities of King Kaṁsa','5: The Meeting of Nanda Mahārāja and Vasudeva','6: The Killing of the Demon Pūtanā','7: The Killing of the Demon Tṛṇāvarta','8: Lord Kṛṣṇa Shows the Universal Form Within His Mouth',
    '9: Mother Yaśodā Binds Lord Kṛṣṇa','10: The Deliverance of the Yamala-arjuna Trees','11: The Childhood Pastimes of Kṛṣṇa','12: The Killing of the Demon Aghāsura','13: The Stealing of the Boys and Calves by Brahmā','14: Brahmā’s Prayers to Lord Kṛṣṇa','15: The Killing of Dhenuka, the Ass Demon','16: Kṛṣṇa Chastises the Serpent Kāliya','17: The History of Kāliya',
    '18: Lord Balarāma Slays the Demon Pralamba','19: Swallowing the Forest Fire','20: The Rainy Season and Autumn in Vṛndāvana','21: The Gopīs Glorify the Song of Kṛṣṇa’s Flute','22: Kṛṣṇa Steals the Garments of the Unmarried Gopīs','23: The Brāhmaṇas’ Wives Blessed','24: Worshiping Govardhana Hill','25: Lord Kṛṣṇa Lifts Govardhana Hill','26: Wonderful Kṛṣṇa',
    '27: Lord Indra and Mother Surabhi Offer Prayers','28: Kṛṣṇa Rescues Nanda Mahārāja from the Abode of Varuṇa','29: Kṛṣṇa and the Gopīs Meet for the Rāsa Dance','30: The Gopīs Search for Kṛṣṇa','31: The Gopīs’ Songs of Separation','32: The Reunion','33: The Rāsa Dance','34: Nanda Mahārāja Saved and Śaṅkhacūḍa Slain','35: The Gopīs Sing of Kṛṣṇa as He Wanders in the Forest',
    '36: The Slaying of Ariṣṭā, the Bull Demon','37: The Killing of the Demons Keśi and Vyoma','38: Akrūra’s Arrival in Vṛndāvana','39: Akrūra’s Vision','40: The Prayers of Akrūra','41: Kṛṣṇa and Balarāma Enter Mathurā','42: The Breaking of the Sacrificial Bow','43: Kṛṣṇa Kills the Elephant Kuvalayāpīḍa','44: The Killing of Kaṁsa','45: Kṛṣṇa Rescues His Teacher’s Son',
    '46: Uddhava Visits Vṛndāvana','47: The Song of the Bee','48: Kṛṣṇa Pleases His Devotees','49: Akrūra’s Mission in Hastināpura','50: Kṛṣṇa Establishes the City of Dvārakā','51: The Deliverance of Mucukunda','52: Rukmiṇī’s Message to Lord Kṛṣṇa','53: Kṛṣṇa Kidnaps Rukmiṇī','54: The Marriage of Kṛṣṇa and Rukmiṇī','55: The History of Pradyumna','56: The Syamantaka Jewel',
    '57: Satrājit Murdered, the Jewel Returned','58: Kṛṣṇa Marries Five Princesses','59: The Killing of the Demon Naraka','60: Lord Kṛṣṇa Teases Queen Rukmiṇī.','61: Lord Balarāma Slays Rukmī','62: The Meeting of Ūṣā and Aniruddha','63: Lord Kṛṣṇa Fights with Bāṇāsura','64: The Deliverance of King Nṛga','65: Lord Balarāma Visits Vṛndāvana',
    '66: Pauṇḍraka, the False Vāsudeva','67: Lord Balarāma Slays Dvivida Gorilla','68: The Marriage of Sāmba','69: Nārada Muni Visits Lord Kṛṣṇa’s Palaces in Dvārakā','70: Lord Kṛṣṇa’s Daily Activities','71: The Lord Travels to Indraprastha','72: The Slaying of the Demon Jarāsandha','73: Lord Kṛṣṇa Blesses the Liberated Kings',
    '74: The Deliverance of Śiśupāla at the Rājasūya Sacrifice','75: Duryodhana Humiliated','76: The Battle Between Śālva and the Vṛṣṇis','77: Lord Kṛṣṇa Slays the Demon Śālva','78: The Killing of Dantavakra, Vidūratha and Romaharṣaṇa','79: Lord Balarāma Goes on Pilgrimage','80: The Brāhmaṇa Sudāmā Visits Lord Kṛṣṇa in Dvārakā','81: The Lord Blesses Sudāmā Brāhmaṇa',
    '82: Kṛṣṇa and Balarāma Meet the Inhabitants of Vṛndāvana','83: Draupadī Meets the Queens of Kṛṣṇa','84: The Sages’ Teachings at Kurukṣetra','85: Lord Kṛṣṇa Instructs Vasudeva and Retrieves Devakī’s Sons','86: Arjuna Kidnaps Subhadrā, and Kṛṣṇa Blesses His Devotees','87: The Prayers of the Personified Vedas','88: Lord Śiva Saved from Vṛkāsura',
    '89: Kṛṣṇa and Arjuna Retrieve a Brāhmaṇa’s Sons','90: Summary of Lord Kṛṣṇa’s Glories'],
    ['1: The Curse upon the Yadu Dynasty','2: Mahārāja Nimi Meets the Nine Yogendras','3: Liberation from the Illusory Energy','4: Drumila Explains the Incarnations of Godhead to King Nimi','5: Nārada Concludes His Teachings to Vasudeva','6: The Yadu Dynasty Retires to Prabhāsa','7: Lord Kṛṣṇa Instructs Uddhava','8: The Story of Piṅgalā','9: Detachment from All that Is Material',
    '10: The Nature of Fruitive Activity','11: The Symptoms of Conditioned and Liberated Living Entities','12: Beyond Renunciation and Knowledge','13: The Haṁsa-avatāra Answers the Questions of the Sons of Brahmā','14: Lord Kṛṣṇa Explains the Yoga System to Śrī Uddhava','15: Lord Kṛṣṇa’s Description of Mystic Yoga Perfections','16: The Lord’s Opulence',
    '17: Lord Kṛṣṇa’s Description of the Varṇāśrama System','18: Description of Varṇāśrama-dharma','19: The Perfection of Spiritual Knowledge','20: Pure Devotional Service Surpasses Knowledge and Detachment','21: Lord Kṛṣṇa’s Explanation of the Vedic Path','22: Enumeration of the Elements of Material Creation','23: The Song of the Avantī Brāhmaṇa','24: The Philosophy of Sāṅkhya',
    '25: The Three Modes of Nature and Beyond','26: The Aila-gītā','27: Lord Kṛṣṇa’s Instructions on the Process of Deity Worship','28: Jñāna-yoga','29: Bhakti-yoga','30: The Disappearance of the Yadu Dynasty','31: The Disappearance of Lord Śrī Kṛṣṇa'],
    ['1: The Degraded Dynasties of Kali-yuga','2: The Symptoms of Kali-yuga','3: The Bhūmi-gītā','4: The Four Categories of Universal Annihilation','5: Śukadeva Gosvāmī’s Final Instructions to Mahārāja Parīkṣit','6: Mahārāja Parīkṣit Passes Away','7: The Purāṇic Literatures','8: Mārkaṇḍeya’s Prayers to Nara-Nārāyaṇa Ṛṣi','9: Mārkaṇḍeya Ṛṣi Sees the Illusory Potency of the Lord',
    '10: Lord Śiva and Umā Glorify Mārkaṇḍeya Ṛṣi','11: Summary Description of the Mahāpuruṣa','12: The Topics of Śrīmad-Bhāgavatam Summarized','13: The Glories of Śrīmad-Bhāgavatam'],
  ];
  List<List<int>> versecountcanto = [[23,34,44,33,40,38,58,52,49,36,39,36,60,44,51,36,45,50,40],
    [39,37,25,25,42,46,53,29,46,51],
    [45,34,28,36,51,40,42,33,44,30,42,57,50,51,50,37,31,28,38,53,56,39,57,47,44,72,30,44,45,34,48,43,37],
    [66,35,25,34,26,53,61,82,67,30,35,52,49,46,26,27,36,32,42,38,52,63,39,79,62,26,30,65,88,51,31],
    [41,23,20,19,35,19,14,31,20,25,17,16,26,46,16,29,24,39,31,46,19,17,9,31,15,40],
    [68,49,35,54,44,45,40,42,55,33,27,35,23,61,28,65,41,78,28],
    [48,61,38,46,57,30,55,56,55,70,35,31,46,42,80],
    [33,33,33,26,50,39,46,46,29,57,48,47,36,11,36,62,28,32,43,34,34,36,31,61],
    [42,36,36,71,28,55,26,30,49,55,36,16,27,49,41,37,17,51,29,39,36,49,38,67],
    [69,42,53,46,32,44,37,52,23,43,59,44,64,61,52,67,25,32,16,49,20,38,52,38,33,25,28,17,48,44,19,22,39,32,26,40,33,43,57,30,52,38,40,51,50,
    49,69,36,31,57,63,44,57,60,40,45,42,58,45,59,40,33,53,44,34,43,28,54,45,47,45,46,35,54,40,33,37,40,34,45,41,48,43,71,59,59,50,40,65,50],
    [24,55,55,23,52,50,74,44,33,37,49,24,42,46,36,44,58,48,45,37,43,61,61,29,36,35,55,44,49,50,28],
    [41,44,52,43,13,80,25,49,34,42,50,69,23],
  ];
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
          SingleChildScrollView(
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Text('Srimad Bhagavatam',style: TextStyle(fontSize: 35,fontFamily: 'Samarkan',color: Colors.white),),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Container(
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SBChapterPage(CantoChapterName[index], index+1,versecountcanto[index])));
                            },
                            child: BookCardsb(BookCoversb[index],'Canto ${index+1}')),
                      ),
                    );
                  },
                  itemCount: BookCoversb.length,),

              ),
            ],
        ),
          ),
    ],
      ),
    );
  }
}
class BookCardsb extends StatelessWidget {
  String url;
  String name;
  BookCardsb(this.url,this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(url)),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 2.0),
          width: 75,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          height: 20,
          child: Text(name,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
