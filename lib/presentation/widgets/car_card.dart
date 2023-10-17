import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt5/domain/models/car/car.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed("/car-details", arguments: car.id);
      },
      leading: Text("#${car.id}"),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(car.car),
          Text("${car.model} ${car.modelYear} г."),
        ],
      ),
      trailing: Column(
        children: [
          const Icon(Icons.star),
          Text("${Random().nextInt(3) + 2}"),
        ],
      ),
    );
  }
}
