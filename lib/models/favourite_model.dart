import 'package:hive/hive.dart';

part 'favourite_model.g.dart';

@HiveType(typeId: 0)
class FavouriteModel extends HiveObject{

  @HiveField(0)
  String book;

  @HiveField(1)
  int chapterNum;

  @HiveField(2)
  int shlokaNum;

  @HiveField(3)
  String image;

  FavouriteModel({required this.book,required this.chapterNum,required this.shlokaNum,required this.image});
}