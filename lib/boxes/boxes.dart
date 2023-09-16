import 'package:hive/hive.dart';
import 'package:hmbg/models/favourite_model.dart';
class Boxes {

  static Box<FavouriteModel> getData() => Hive.box<FavouriteModel>('favourite');
}