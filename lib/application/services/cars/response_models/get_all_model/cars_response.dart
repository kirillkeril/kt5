import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/car/car.dart';


part 'cars_response.freezed.dart';
part 'cars_response.g.dart';

@freezed
class CarsResponse with _$CarsResponse {
  const factory CarsResponse({
    required List<Car> cars,
  }) = _CarsResponse;

  factory CarsResponse.fromJson(Map<String, Object?> json) => _$CarsResponseFromJson(json);
}
