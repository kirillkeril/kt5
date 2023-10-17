import 'package:dio/dio.dart';
import 'package:kt5/application/services/cars/response_models/get_all_model/cars_response.dart';
import 'package:kt5/application/services/cars/response_models/get_by_id_model/car_response.dart';
import 'package:kt5/domain/models/car/car.dart';

abstract class ICarsService {
  Future<List<Car>> getAll();

  Future<Car> getById(int id);
}

class CarsService implements ICarsService {
  final Dio httpClient;

  const CarsService({required this.httpClient});

  @override
  Future<List<Car>> getAll() async {
    var res = await httpClient.get('cars');
    CarsResponse carsData = CarsResponse.fromJson(res.data);
    return carsData.cars;
  }

  @override
  Future<Car> getById(int id) async {
    var res = await httpClient.get('cars/$id');
    print(res.data);
    CarResponse carData = CarResponse.fromJson(res.data);
    return carData.car;
  }
}

