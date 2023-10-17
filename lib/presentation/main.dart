import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt5/application/services/cars/cars_service.dart';
import 'package:kt5/presentation/pages/car_details/car_details_controller.dart';
import 'package:kt5/presentation/pages/car_details/car_details_page.dart';
import 'package:kt5/presentation/pages/cars_list/cars_list_controller.dart';
import 'package:kt5/presentation/pages/cars_list/cars_list_page.dart';


void main() {
  var httpClient = Dio(BaseOptions(baseUrl: "https://myfakeapi.com/api/"));

  Get.put(CarsService(httpClient: httpClient));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: "/", page: () => CarsListPage()),
        GetPage(name: "/car-details", page: () => CarDetails()),
      ],
      initialRoute: "/",
    );
  }
}
