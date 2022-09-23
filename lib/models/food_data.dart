import 'package:api_get_data_flutter/models/food_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_data.g.dart';

@JsonSerializable()
class FoodData {
  @JsonKey(name: 'error')
  int? error;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'data')
  List<FoodModel>? data;

  @JsonKey(name: 'message')
  String? message;

  FoodData();

  factory FoodData.fromJson(Map<String, dynamic> json) =>
      _$FoodDataFromJson(json);

  Map<String, dynamic> toJson() => _$FoodDataToJson(this);
}
