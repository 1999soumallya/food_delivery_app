import 'package:food_delivery_app/Controller/popular_product_controller.dart';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async{
  // Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));

  // Repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}