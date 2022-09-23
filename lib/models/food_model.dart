import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'thumbnail')
  String? thumbnail;

  @JsonKey(name: 'decscription')
  String? description;

  @JsonKey(name: 'thumbnailone')
  String? thumbnailOne;

  @JsonKey(name: 'decscriptionone')
  String? descriptionOne;

  @JsonKey(name: 'thumbnailtwo')
  String? thumbnailTwo;

  @JsonKey(name: 'decscriptiontwo')
  String? descriptionTwo;

  @JsonKey(name: 'thumbnailthree')
  String? thumbnailThree;

  @JsonKey(name: 'decscriptionthree')
  String? descriptionThree;

  @JsonKey(name: 'created_at')
  String? createdAt;

  @JsonKey(name: 'updated_at')
  String? updatedAt;

  FoodModel();

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}
