// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteModelAdapter extends TypeAdapter<FavouriteModel> {
  @override
  final int typeId = 0;

  @override
  FavouriteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteModel(
      book: fields[0] as String,
      chapterNum: fields[1] as int,
      shlokaNum: fields[2] as int,
      image: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavouriteModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.book)
      ..writeByte(1)
      ..write(obj.chapterNum)
      ..writeByte(2)
      ..write(obj.shlokaNum)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
