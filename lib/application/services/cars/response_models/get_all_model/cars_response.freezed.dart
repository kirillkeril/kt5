// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarsResponse _$CarsResponseFromJson(Map<String, dynamic> json) {
  return _CarsResponse.fromJson(json);
}

/// @nodoc
mixin _$CarsResponse {
  List<Car> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarsResponseCopyWith<CarsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsResponseCopyWith<$Res> {
  factory $CarsResponseCopyWith(
          CarsResponse value, $Res Function(CarsResponse) then) =
      _$CarsResponseCopyWithImpl<$Res, CarsResponse>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarsResponseCopyWithImpl<$Res, $Val extends CarsResponse>
    implements $CarsResponseCopyWith<$Res> {
  _$CarsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarsResponseImplCopyWith<$Res>
    implements $CarsResponseCopyWith<$Res> {
  factory _$$CarsResponseImplCopyWith(
          _$CarsResponseImpl value, $Res Function(_$CarsResponseImpl) then) =
      __$$CarsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarsResponseImplCopyWithImpl<$Res>
    extends _$CarsResponseCopyWithImpl<$Res, _$CarsResponseImpl>
    implements _$$CarsResponseImplCopyWith<$Res> {
  __$$CarsResponseImplCopyWithImpl(
      _$CarsResponseImpl _value, $Res Function(_$CarsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarsResponseImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarsResponseImpl implements _CarsResponse {
  const _$CarsResponseImpl({required final List<Car> cars}) : _cars = cars;

  factory _$CarsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarsResponseImplFromJson(json);

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarsResponse(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsResponseImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsResponseImplCopyWith<_$CarsResponseImpl> get copyWith =>
      __$$CarsResponseImplCopyWithImpl<_$CarsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarsResponseImplToJson(
      this,
    );
  }
}

abstract class _CarsResponse implements CarsResponse {
  const factory _CarsResponse({required final List<Car> cars}) =
      _$CarsResponseImpl;

  factory _CarsResponse.fromJson(Map<String, dynamic> json) =
      _$CarsResponseImpl.fromJson;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$CarsResponseImplCopyWith<_$CarsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
