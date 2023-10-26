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
  List<List<String>> CantoChapterName = [['Questions by the Sages','Divinity and Divine Service','Kṛṣṇa Is the Source of All Incarnations',
  'The Appearance of Śrī Nārada','Nārada’s Instructions on Śrīmad-Bhāgavatam for Vyāsadeva','Conversation Between Nārada and Vyāsadeva',
  'The Son of Droṇa Punished','Prayers by Queen Kuntī and Parīkṣit Saved','The Passing Away of Bhīṣmadeva in the Presence of Lord Kṛṣṇa',
  'Departure of Lord Kṛṣṇa for Dvārakā','Lord Kṛṣṇa’s Entrance into Dvārakā','Birth of Emperor Parīkṣit','Dhṛtarāṣṭra Quits Home','The Disappearance of Lord Kṛṣṇa',
  'The Pāṇḍavas Retire Timely','How Parīkṣit Received the Age of Kali','Punishment and Reward of Kali','Mahārāja Parīkṣit Cursed by a Brāhmaṇa Boy',
  'The Appearance of Śukadeva Gosvāmī'],
    ['The First Step in God Realization','The Lord in the Heart','Pure Devotional Service: The Change in Heart','The Process of Creation',
    'The Cause of All Causes','Puruṣa-sūkta Confirmed','Scheduled Incarnations with Specific Functions','Questions by King Parīkṣit',
    'Answers by Citing the Lord’s Version','Bhāgavatam Is the Answer to All Questions'],
    ['Questions by Vidura','Remembrance of Lord Kṛṣṇa','The Lord’s Pastimes Out of Vṛndāvana','Vidura Approaches Maitreya','Vidura’s Talks with Maitreya','Creation of the Universal Form','Further Inquires by Vidura','Manifestation of Brahmā from Garbhodakaśāyī Viṣṇu',
    'Brahmā’s Prayers for Creative Energy','Divisions of the Creation','Calculation of Time, from the Atom','Creation of the Kumāras and Others','The Appearance of Lord Varāha','Pregnancy of Diti in the Evening','Description of the Kingdom of God',
    'The Two Doorkeepers of Vaikuṇṭha, Jaya and Vijaya, Cursed by the Sages','Victory of Hiraṇyākṣa Over All the Directions of the Universe','The Battle Between Lord Boar and the Demon Hiraṇyākṣa','The Killing of the Demon Hiraṇyākṣa','Conversation Between Maitreya and Vidura',
    'Conversation Between Manu and Kardama','The Marriage of Kardama Muni and Devahūti','Devahūti’s Lamentation','The Renunciation of Kardama Muni','The Glories of Devotional Service','Fundamental Principles of Material Nature','Understanding Material Nature',
    'Kapila’s Instructions on the Execution of Devotional Service','Explanation of Devotional Service by Lord Kapila','Description by Lord Kapila of Adverse Fruitive Activities','Lord Kapila’s Instructions on the Movements of the Living Entities','Entanglement in Fruitive Activities','Activities of Kapila'],
    ['Genealogical Table of the Daughters of Manu','Dakṣa Curses Lord Śiva','Talks Between Lord Śiva and Satī','Satī Quits Her Body','Frustration of the Sacrifice of Dakṣa','Brahmā Satisfies Lord Śiva','The Sacrifice Performed by Dakṣa','Dhruva Mahārāja Leaves Home for the Forest',
    'Dhruva Mahārāja Returns Home','Dhruva Mahārāja’s Fight with the Yakṣas','Svāyambhuva Manu Advises Dhruva Mahārāja to Stop Fighting','Dhruva Mahārāja Goes Back to Godhead','Description of the Descendants of Dhruva Mahārāja','The Story of King Vena',
    'King Pṛthu’s Appearance and Coronation','Praise of King Pṛthu by the Professional Reciters','Mahārāja Pṛthu Becomes Angry at the Earth','Pṛthu Mahārāja Milks the Earth Planet','King Pṛthu’s One Hundred Horse Sacrifices','Lord Viṣṇu’s Appearance in the Sacrificial Arena of Mahārāja Pṛthu',
    'Instructions by Mahārāja Pṛthu','Pṛthu Mahārāja’s Meeting with the Four Kumāras','Mahārāja Pṛthu’s Going Back Home','Chanting the Song Sung by Lord Śiva','The Descriptions of the Characteristics of King Purañjana','King Purañjana Goes to the Forest to Hunt, and His Queen Becomes Angry',
    'Attack by Caṇḍavega on the City of King Purañjana; the Character of Kālakanyā','Purañjana Becomes a Woman in the Next Life','Talks Between Nārada and King Prācīnabarhi','The Activities of the Pracetās','Nārada Instructs the Pracetās'],
    ['The Activities of Mahārāja Priyavrata','The Activities of Mahārāja Āgnīdhra','Ṛṣabhadeva’s Appearance in the Womb of Merudevī, the Wife of King Nābhi','The Characteristics of Ṛṣabhadeva, the Supreme Personality of Godhead','Lord Ṛṣabhadeva’s Teachings to His Sons','The Activities of Lord Ṛṣabhadeva',
    'The Activities of King Bharata','A Description of the Character of Bharata Mahārāja','The Supreme Character of Jaḍa Bharata','The Discussion Between Jaḍa Bharata and Mahārāja Rahūgaṇa','Jaḍa Bharata Instructs King Rahūgaṇa','Conversation Between Mahārāja Rahūgaṇa and Jaḍa Bharata',
    'Further Talks Between King Rahūgaṇa and Jaḍa Bharata','The Material World as the Great Forest of Enjoyment','The Glories of the Descendants of King Priyavrata','A Description of Jambūdvīpa','The Descent of the River Ganges','The Prayers Offered to the Lord by the Residents of Jambūdvīpa',
    'A Description of the Island of Jambūdvīpa','Studying the Structure of the Universe','The Movements of the Sun','The Orbits of the Planets','The Śiśumāra Planetary Systems','The Subterranean Heavenly Planets','The Glories of Lord Ananta','A Description of the Hellish Planets'],
    ['The History of the Life of Ajāmila','Ajāmila Delivered by the Viṣṇudūtas','Yamarāja Instructs His Messengers','The Haṁsa-guhya Prayers Offered to the Lord by Prajāpati Dakṣa','Nārada Muni Cursed by Prajāpati Dakṣa','The Progeny of the Daughters of Dakṣa','Indra Offends His Spiritual Master, Bṛhaspati.',
    'The Nārāyaṇa-kavaca Shield','Appearance of the Demon Vṛtrāsura','The Battle Between the Demigods and Vṛtrāsura','The Transcendental Qualities of Vṛtrāsura','Vṛtrāsura’s Glorious Death','King Indra Afflicted by Sinful Reaction','King Citraketu’s Lamentation',
    'The Saints Nārada and Aṅgirā Instruct King Citraketu','King Citraketu Meets the Supreme Lord','Mother Pārvatī Curses Citraketu','Diti Vows to Kill King Indra','Performing the Puṁsavana Ritualistic Ceremony'],
    ['The Supreme Lord Is Equal to Everyone','Hiraṇyakaśipu, King of the Demons','Hiraṇyakaśipu’s Plan to Become Immortal','Hiraṇyakaśipu Terrorizes the Universe','Prahlāda Mahārāja, the Saintly Son of Hiraṇyakaśipu','Prahlāda Instructs His Demoniac Schoolmates','What Prahlāda Learned in the Womb',
    'Lord Nṛsiṁhadeva Slays the King of the Demons','Prahlāda Pacifies Lord Nṛsiṁhadeva with Prayers','Prahlāda, the Best Among Exalted Devotees','The Perfect Society: Four Social Classes','The Perfect Society: Four Spiritual Classes','The Behavior of a Perfect Person','Ideal Family Life','Instructions for Civilized Human Beings'],
    ['The Manus, Administrators of the Universe','The Elephant Gajendra’s Crisis','Gajendra’s Prayers of Surrender','Gajendra’s Prayers of Surrender','The Demigods Appeal to the Lord for Protection','The Demigods and Demons Declare a Truce','Lord Śiva Saves the Universe by Drinking Poison','The Churning of the Milk Ocean',
    'The Lord Incarnates as Mohinī-Mūrti','The Battle Between the Demigods and the Demons','King Indra Annihilates the Demons','The Mohinī-mūrti Incarnation Bewilders Lord Śiva','Description of Future Manus','The System of Universal Management','ali Mahārāja Conquers the Heavenly Planets',
    'Executing the Payo-vrata Process of Worship','The Supreme Lord Agrees to Become Aditi’s Son','Lord Vāmanadeva, the Dwarf Incarnation','Lord Vāmanadeva Begs Charity from Bali Mahārāja','Bali Mahārāja Surrenders the Universe','Bali Mahārāja Arrested by the Lord','Bali Mahārāja Surrenders His Life',
    'The Demigods Regain the Heavenly Planets','Matsya, the Lord’s Fish Incarnation'],
    ['King Sudyumna Becomes a Woman','The Dynasties of the Sons of Manu','The Marriage of Sukanyā and Cyavana Muni','Ambarīṣa Mahārāja Offended by Durvāsā Muni','Durvāsā Muni’s Life Spared','The Downfall of Saubhari Muni','The Descendants of King Māndhātā','The Sons of Sagara Meet Lord Kapiladeva','The Dynasty of Aṁśumān',
    'The Pastimes of the Supreme Lord, Rāmacandra','Lord Rāmacandra Rules the World','The Dynasty of Kuśa, the Son of Lord Rāmacandra','The Dynasty of Mahārāja Nimi','King Purūravā Enchanted by Urvaśī','Paraśurāma, the Lord’s Warrior Incarnation','Lord Paraśurāma Destroys the World’s Ruling Class',
    'The Dynasties of the Sons of Purūravā','King Yayāti Regains His Youth','King Yayāti Achieves Liberation','The Dynasty of Pūru','The Dynasty of Bharata','The Descendants of Ajamīḍha','The Dynasties of the Sons of Yayāti','Kṛṣṇa, the Supreme Personality of Godhead'],
    ['The Advent of Lord Kṛṣṇa: Introduction','Prayers by the Demigods for Lord Kṛṣṇa in the Womb','The Birth of Lord Kṛṣṇa','The Atrocities of King Kaṁsa','The Meeting of Nanda Mahārāja and Vasudeva','The Killing of the Demon Pūtanā','The Killing of the Demon Tṛṇāvarta','Lord Kṛṣṇa Shows the Universal Form Within His Mouth',
    'Mother Yaśodā Binds Lord Kṛṣṇa','The Deliverance of the Yamala-arjuna Trees','The Childhood Pastimes of Kṛṣṇa','The Killing of the Demon Aghāsura','The Stealing of the Boys and Calves by Brahmā','Brahmā’s Prayers to Lord Kṛṣṇa','The Killing of Dhenuka, the Ass Demon','Kṛṣṇa Chastises the Serpent Kāliya','The History of Kāliya',
    'Lord Balarāma Slays the Demon Pralamba','Swallowing the Forest Fire','The Rainy Season and Autumn in Vṛndāvana','The Gopīs Glorify the Song of Kṛṣṇa’s Flute','Kṛṣṇa Steals the Garments of the Unmarried Gopīs','The Brāhmaṇas’ Wives Blessed','Worshiping Govardhana Hill','Lord Kṛṣṇa Lifts Govardhana Hill','Wonderful Kṛṣṇa',
    'Lord Indra and Mother Surabhi Offer Prayers','Kṛṣṇa Rescues Nanda Mahārāja from the Abode of Varuṇa','Kṛṣṇa and the Gopīs Meet for the Rāsa Dance','The Gopīs Search for Kṛṣṇa','The Gopīs’ Songs of Separation','The Reunion','The Rāsa Dance','Nanda Mahārāja Saved and Śaṅkhacūḍa Slain','The Gopīs Sing of Kṛṣṇa as He Wanders in the Forest',
    'The Slaying of Ariṣṭā, the Bull Demon','The Killing of the Demons Keśi and Vyoma','Akrūra’s Arrival in Vṛndāvana','Akrūra’s Vision','The Prayers of Akrūra','Kṛṣṇa and Balarāma Enter Mathurā','The Breaking of the Sacrificial Bow','Kṛṣṇa Kills the Elephant Kuvalayāpīḍa','The Killing of Kaṁsa','Kṛṣṇa Rescues His Teacher’s Son',
    'Uddhava Visits Vṛndāvana','The Song of the Bee','Kṛṣṇa Pleases His Devotees','Akrūra’s Mission in Hastināpura','Kṛṣṇa Establishes the City of Dvārakā','The Deliverance of Mucukunda','Rukmiṇī’s Message to Lord Kṛṣṇa','Kṛṣṇa Kidnaps Rukmiṇī','The Marriage of Kṛṣṇa and Rukmiṇī','The History of Pradyumna','The Syamantaka Jewel',
    'Satrājit Murdered, the Jewel Returned','Kṛṣṇa Marries Five Princesses','The Killing of the Demon Naraka','Lord Kṛṣṇa Teases Queen Rukmiṇī.','Lord Balarāma Slays Rukmī','The Meeting of Ūṣā and Aniruddha','Lord Kṛṣṇa Fights with Bāṇāsura','The Deliverance of King Nṛga','Lord Balarāma Visits Vṛndāvana',
    'Pauṇḍraka, the False Vāsudeva','Lord Balarāma Slays Dvivida Gorilla','The Marriage of Sāmba','Nārada Muni Visits Lord Kṛṣṇa’s Palaces in Dvārakā','Lord Kṛṣṇa’s Daily Activities','The Lord Travels to Indraprastha','The Slaying of the Demon Jarāsandha','Lord Kṛṣṇa Blesses the Liberated Kings',
    'The Deliverance of Śiśupāla at the Rājasūya Sacrifice','Duryodhana Humiliated','The Battle Between Śālva and the Vṛṣṇis','Lord Kṛṣṇa Slays the Demon Śālva','The Killing of Dantavakra, Vidūratha and Romaharṣaṇa','Lord Balarāma Goes on Pilgrimage','The Brāhmaṇa Sudāmā Visits Lord Kṛṣṇa in Dvārakā','The Lord Blesses Sudāmā Brāhmaṇa',
    'Kṛṣṇa and Balarāma Meet the Inhabitants of Vṛndāvana','Draupadī Meets the Queens of Kṛṣṇa','The Sages’ Teachings at Kurukṣetra','Lord Kṛṣṇa Instructs Vasudeva and Retrieves Devakī’s Sons','Arjuna Kidnaps Subhadrā, and Kṛṣṇa Blesses His Devotees','The Prayers of the Personified Vedas','Lord Śiva Saved from Vṛkāsura',
    'Kṛṣṇa and Arjuna Retrieve a Brāhmaṇa’s Sons','Summary of Lord Kṛṣṇa’s Glories'],
    ['The Curse upon the Yadu Dynasty','Mahārāja Nimi Meets the Nine Yogendras','Liberation from the Illusory Energy','Drumila Explains the Incarnations of Godhead to King Nimi','Nārada Concludes His Teachings to Vasudeva','The Yadu Dynasty Retires to Prabhāsa','Lord Kṛṣṇa Instructs Uddhava','The Story of Piṅgalā','Detachment from All that Is Material',
    'The Nature of Fruitive Activity','The Symptoms of Conditioned and Liberated Living Entities','Beyond Renunciation and Knowledge','The Haṁsa-avatāra Answers the Questions of the Sons of Brahmā','Lord Kṛṣṇa Explains the Yoga System to Śrī Uddhava','Lord Kṛṣṇa’s Description of Mystic Yoga Perfections','The Lord’s Opulence',
    'Lord Kṛṣṇa’s Description of the Varṇāśrama System','Description of Varṇāśrama-dharma','The Perfection of Spiritual Knowledge','Pure Devotional Service Surpasses Knowledge and Detachment','Lord Kṛṣṇa’s Explanation of the Vedic Path','Enumeration of the Elements of Material Creation','The Song of the Avantī Brāhmaṇa','The Philosophy of Sāṅkhya',
    'The Three Modes of Nature and Beyond','The Aila-gītā','Lord Kṛṣṇa’s Instructions on the Process of Deity Worship','Jñāna-yoga','Bhakti-yoga','The Disappearance of the Yadu Dynasty','The Disappearance of Lord Śrī Kṛṣṇa'],
    ['The Degraded Dynasties of Kali-yuga','The Symptoms of Kali-yuga','The Bhūmi-gītā','The Four Categories of Universal Annihilation','Śukadeva Gosvāmī’s Final Instructions to Mahārāja Parīkṣit','Mahārāja Parīkṣit Passes Away','The Purāṇic Literatures','Mārkaṇḍeya’s Prayers to Nara-Nārāyaṇa Ṛṣi','Mārkaṇḍeya Ṛṣi Sees the Illusory Potency of the Lord',
    'Lord Śiva and Umā Glorify Mārkaṇḍeya Ṛṣi','Summary Description of the Mahāpuruṣa','The Topics of Śrīmad-Bhāgavatam Summarized','The Glories of Śrīmad-Bhāgavatam'],
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SBChapterPage(CantoChapterName[index] as List<String>, index+1,versecountcanto[index])));
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
