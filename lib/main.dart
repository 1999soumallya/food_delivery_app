import 'package:flutter/material.dart';
import 'package:food_delivery_app/Controller/popular_product_controller.dart';
import 'package:food_delivery_app/pages/food/recommened_food_detail.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:food_delivery_app/pages/food/popular_food_detail.dart';
import 'package:get/get.dart';
import 'package:food_delivery_app/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommenedFoodDetail(),
    );
  }
}