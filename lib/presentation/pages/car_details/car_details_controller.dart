import 'package:get/get.dart';
import 'package:kt5/application/services/cars/cars_service.dart';

import '../../../domain/models/car/car.dart';

class CarDetailsController extends GetxController {
  final _car = Rx<Car?>(null);
  final _currentState = CarState.loading.obs;

  final carService = Get.find<CarsService>();

  Car? get car => _car.value;
  CarState get state => _currentState.value;

  Future getCar(int id) async {
    try {
      _currentState.value = CarState.loading;
      _car.value = await carService.getById(id);
      _currentState.value = CarState.loaded;
    } catch (e) {
      _currentState.value = CarState.error;
    }
  }

  @override
  void onInit() {
    getCar(Get.arguments);
    super.onInit();
  }
}

enum CarState { loading, loaded, error }
