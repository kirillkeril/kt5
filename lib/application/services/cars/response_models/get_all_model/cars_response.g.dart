// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarsResponseImpl _$$CarsResponseImplFromJson(Map<String, dynamic> json) =>
    _$CarsResponseImpl(
      cars: (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarsResponseImplToJson(_$CarsResponseImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
