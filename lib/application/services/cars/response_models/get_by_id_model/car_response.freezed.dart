// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarResponse _$CarResponseFromJson(Map<String, dynamic> json) {
  return _CarResponse.fromJson(json);
}

/// @nodoc
mixin _$CarResponse {
  @JsonKey(name: "Car")
  Car get car => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarResponseCopyWith<CarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarResponseCopyWith<$Res> {
  factory $CarResponseCopyWith(
          CarResponse value, $Res Function(CarResponse) then) =
      _$CarResponseCopyWithImpl<$Res, CarResponse>;
  @useResult
  $Res call({@JsonKey(name: "Car") Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$CarResponseCopyWithImpl<$Res, $Val extends CarResponse>
    implements $CarResponseCopyWith<$Res> {
  _$CarResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_value.copyWith(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarResponseImplCopyWith<$Res>
    implements $CarResponseCopyWith<$Res> {
  factory _$$CarResponseImplCopyWith(
          _$CarResponseImpl value, $Res Function(_$CarResponseImpl) then) =
      __$$CarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Car") Car car});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$CarResponseImplCopyWithImpl<$Res>
    extends _$CarResponseCopyWithImpl<$Res, _$CarResponseImpl>
    implements _$$CarResponseImplCopyWith<$Res> {
  __$$CarResponseImplCopyWithImpl(
      _$CarResponseImpl _value, $Res Function(_$CarResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$CarResponseImpl(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarResponseImpl implements _CarResponse {
  const _$CarResponseImpl({@JsonKey(name: "Car") required this.car});

  factory _$CarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarResponseImplFromJson(json);

  @override
  @JsonKey(name: "Car")
  final Car car;

  @override
  String toString() {
    return 'CarResponse(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarResponseImpl &&
            (identical(other.car, car) || other.car == car));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarResponseImplCopyWith<_$CarResponseImpl> get copyWith =>
      __$$CarResponseImplCopyWithImpl<_$CarResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarResponseImplToJson(
      this,
    );
  }
}

abstract class _CarResponse implements CarResponse {
  const factory _CarResponse({@JsonKey(name: "Car") required final Car car}) =
      _$CarResponseImpl;

  factory _CarResponse.fromJson(Map<String, dynamic> json) =
      _$CarResponseImpl.fromJson;

  @override
  @JsonKey(name: "Car")
  Car get car;
  @override
  @JsonKey(ignore: true)
  _$$CarResponseImplCopyWith<_$CarResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
