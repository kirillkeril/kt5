import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kt5/application/services/cars/cars_service.dart';
import 'package:kt5/presentation/pages/cars_list.dart';

GetIt getIt = GetIt.instance;

void main() {
  var httpClient = Dio(BaseOptions(baseUrl: "https://myfakeapi.com/api/"));

  getIt
      .registerFactory<ICarsService>(() => CarsService(httpClient: httpClient));

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
    var s = getIt.get<ICarsService>();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CarsListPage(),
    );
  }
}
