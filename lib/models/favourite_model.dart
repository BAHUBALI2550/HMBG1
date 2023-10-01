import 'package:hive/hive.dart';

part 'favourite_model.g.dart';

@HiveType(typeId: 0)
class FavouriteModel extends HiveObject{

  @HiveField(0)
  String book;

  @HiveField(1) //for srimad bhagvatam,gave 1 for bhagavad gita
  int cantoNum;

  @HiveField(2)
  int chapterNum;

  @HiveField(3)
  int shlokaNum;

  @HiveField(4)
  String image;

  FavouriteModel({required this.book,required this.cantoNum,required this.chapterNum,required this.shlokaNum,required this.image});
}