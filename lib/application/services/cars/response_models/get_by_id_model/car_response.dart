import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/car/car.dart';


part 'car_response.freezed.dart';
part 'car_response.g.dart';

@freezed
class CarResponse with _$CarResponse {
  const factory CarResponse({
    required Car car,
}) = _CarResponse;

  factory CarResponse.fromJson(Map<String, Object?> json) => _$CarResponseFromJson(json);
}
