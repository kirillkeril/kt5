import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class PriceConverter implements JsonConverter<double, String>{
  const PriceConverter();

  @override
  double fromJson(String jsonPrice) {
    return double.parse(jsonPrice.substring(1));
  }

  @override
  String toJson(double price) {
    return "\$$price";
  }

}


@freezed
class Car with _$Car {
  const factory Car({
    required int id,
    @Default("") String car,
    @Default("") @JsonKey(name: "car_mode") String model,
    @Default("") @JsonKey(name: 'car_color') String color,
    @JsonKey(name: 'car_model_year') required int modelYear,
    @JsonKey(name: 'car_vin') required String vin,
    @PriceConverter() required double price,
    required bool availability,
  }) = _Car;

  factory Car.fromJson(Map<String, Object?> json) => _$CarFromJson(json);
}
