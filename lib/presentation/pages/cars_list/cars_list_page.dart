import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt5/presentation/pages/cars_list/cars_list_controller.dart';
import 'package:kt5/presentation/widgets/car_card.dart';

class CarsListPage extends GetView<CarsListController> {
  @override
  final controller = Get.put(CarsListController());

  CarsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Список автомобилей")),
        body: Obx(
          () {
            if (controller.currentState == CarsListState.error) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const Text("Error");
                  });
            }
            if (controller.currentState == CarsListState.loading) {
              return const Center(
                child: SizedBox(
                    width: 24, height: 24, child: CircularProgressIndicator()),
              );
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (controller.currentState == CarsListState.loaded)
                    SizedBox(
                      height: Get.height,
                      child: RefreshIndicator(
                        onRefresh: () async => controller.getCars(),
                        child: ListView.builder(
                          itemCount: controller.cars.length,
                          itemBuilder: (context, index) {
                            return CarCard(car: controller.cars[index]);
                          },
                        ),
                      ),
                    )
                  else
                    const Placeholder()
                ],
              ),
            );
          },
        ));
  }
}
