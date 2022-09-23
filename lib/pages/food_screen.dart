import 'package:api_get_data_flutter/components/widget/food_item.dart';
import 'package:api_get_data_flutter/data_sources/api_service.dart';
import 'package:api_get_data_flutter/models/food_model.dart';
import 'package:flutter/material.dart';
import '../models/food_data.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  late Future<FoodData> futureFoodData;

  @override
  void initState() {
    super.initState();
    futureFoodData = ApiService().fetchFoodData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10,),
        child: FutureBuilder<FoodData>(
          future: futureFoodData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<FoodModel>? list = snapshot.data?.data;
              return ListView.builder(
                  itemCount: list?.length,
                  itemBuilder: (context, index) {
                    return FoodItem(
                      title: list?[index].title??'',
                      description: list?[index].description??'',
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
