import 'dart:convert';
import 'package:api_get_data_flutter/models/food_model.dart';
import '../models/food_data.dart';
import 'api_url.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<FoodModel> fetchFoodModel() async {
    final response = await http.get(ApiUrl.getFoodsURL);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return FoodModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<FoodData> fetchFoodData() async {
    final response = await http.get(ApiUrl.getFoodsURL);

    if (response.statusCode == 200) {
      return FoodData.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}