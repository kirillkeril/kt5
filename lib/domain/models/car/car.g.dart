// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as int,
      car: json['car'] as String? ?? "",
      model: json['car_model'] as String,
      color: json['car_color'] as String? ?? "",
      modelYear: json['car_model_year'] as int,
      vin: json['car_vin'] as String,
      price: const PriceConverter().fromJson(json['price'] as String),
      availability: json['availability'] as bool,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'car': instance.car,
      'car_model': instance.model,
      'car_color': instance.color,
      'car_model_year': instance.modelYear,
      'car_vin': instance.vin,
      'price': const PriceConverter().toJson(instance.price),
      'availability': instance.availability,
    };
