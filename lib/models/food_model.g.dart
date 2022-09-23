// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel()
  ..id = json['id'] as int?
  ..title = json['title'] as String?
  ..thumbnail = json['thumbnail'] as String?
  ..description = json['decscription'] as String?
  ..thumbnailOne = json['thumbnailone'] as String?
  ..descriptionOne = json['decscriptionone'] as String?
  ..thumbnailTwo = json['thumbnailtwo'] as String?
  ..descriptionTwo = json['decscriptiontwo'] as String?
  ..thumbnailThree = json['thumbnailthree'] as String?
  ..descriptionThree = json['decscriptionthree'] as String?
  ..createdAt = json['created_at'] as String?
  ..updatedAt = json['updated_at'] as String?;

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'decscription': instance.description,
      'thumbnailone': instance.thumbnailOne,
      'decscriptionone': instance.descriptionOne,
      'thumbnailtwo': instance.thumbnailTwo,
      'decscriptiontwo': instance.descriptionTwo,
      'thumbnailthree': instance.thumbnailThree,
      'decscriptionthree': instance.descriptionThree,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
