import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt5/presentation/pages/car_details/car_details_controller.dart';

class CarDetails extends GetView<CarDetailsController> {
  CarDetails({super.key});

  @override
  final controller = Get.put(CarDetailsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
            title: Text(controller.car != null ? controller.car!.car : "")),
        body: Builder(builder: (context) {
          if (controller.state == CarState.loading) {
            return const Center(
                child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(),
            ));
          }
          if (controller.state == CarState.error || controller.car == null) {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: Text("Error!"),
                );
              },
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: Get.width,
                    height: Get.width * (9 / 16),
                    child: const Placeholder()),
                Container(
                  padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                  child: Column(
                    children: [
                      Text(controller.car!.model,
                          style: const TextStyle(fontSize: 20)),
                      Text(controller.car!.vin,
                          style: const TextStyle(fontSize: 12)),
                      Text(controller.car!.color),
                      Text("\$ ${controller.car!.price}",
                          style: const TextStyle(fontSize: 32)),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
