import 'package:get/get.dart';
import 'package:kt5/application/services/cars/cars_service.dart';
import 'package:kt5/domain/models/car/car.dart';

class CarsListController extends GetxController {
  final _currentState = CarsListState.loading.obs;
  final cars = <Car>[].obs;

  final CarsService carsService = Get.find();

  CarsListState get currentState => _currentState.value;

  Future getCars() async {
    try {
      _currentState.value = CarsListState.loading;
      cars.value = await carsService.getAll();
      _currentState.value = CarsListState.loaded;
    } catch(e) {
      _currentState.value = CarsListState.error;
    }
  }

  @override
  void onInit() {
    getCars();
    super.onInit();
  }
}

enum CarsListState {
  loading,
  loaded,
  error
}
