// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodData _$FoodDataFromJson(Map<String, dynamic> json) => FoodData()
  ..error = json['error'] as int?
  ..status = json['status'] as int?
  ..data = (json['data'] as List<dynamic>?)
      ?.map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
      .toList()
  ..message = json['message'] as String?;

Map<String, dynamic> _$FoodDataToJson(FoodData instance) => <String, dynamic>{
      'error': instance.error,
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
