// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_pin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LockPin _$LockPinFromJson(Map<String, dynamic> json) {
  return _LockPin.fromJson(json);
}

/// @nodoc
mixin _$LockPin {
  String get pinId => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get sTime => throw _privateConstructorUsedError;
  String? get eTime => throw _privateConstructorUsedError;

  /// Serializes this LockPin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LockPin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LockPinCopyWith<LockPin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockPinCopyWith<$Res> {
  factory $LockPinCopyWith(LockPin value, $Res Function(LockPin) then) =
      _$LockPinCopyWithImpl<$Res, LockPin>;
  @useResult
  $Res call(
      {String pinId,
      String pinCode,
      String? qrCode,
      String? category,
      String? sTime,
      String? eTime});
}

/// @nodoc
class _$LockPinCopyWithImpl<$Res, $Val extends LockPin>
    implements $LockPinCopyWith<$Res> {
  _$LockPinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LockPin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? pinCode = null,
    Object? qrCode = freezed,
    Object? category = freezed,
    Object? sTime = freezed,
    Object? eTime = freezed,
  }) {
    return _then(_value.copyWith(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sTime: freezed == sTime
          ? _value.sTime
          : sTime // ignore: cast_nullable_to_non_nullable
              as String?,
      eTime: freezed == eTime
          ? _value.eTime
          : eTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockPinImplCopyWith<$Res> implements $LockPinCopyWith<$Res> {
  factory _$$LockPinImplCopyWith(
          _$LockPinImpl value, $Res Function(_$LockPinImpl) then) =
      __$$LockPinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pinId,
      String pinCode,
      String? qrCode,
      String? category,
      String? sTime,
      String? eTime});
}

/// @nodoc
class __$$LockPinImplCopyWithImpl<$Res>
    extends _$LockPinCopyWithImpl<$Res, _$LockPinImpl>
    implements _$$LockPinImplCopyWith<$Res> {
  __$$LockPinImplCopyWithImpl(
      _$LockPinImpl _value, $Res Function(_$LockPinImpl) _then)
      : super(_value, _then);

  /// Create a copy of LockPin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? pinCode = null,
    Object? qrCode = freezed,
    Object? category = freezed,
    Object? sTime = freezed,
    Object? eTime = freezed,
  }) {
    return _then(_$LockPinImpl(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sTime: freezed == sTime
          ? _value.sTime
          : sTime // ignore: cast_nullable_to_non_nullable
              as String?,
      eTime: freezed == eTime
          ? _value.eTime
          : eTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockPinImpl implements _LockPin {
  const _$LockPinImpl(
      {required this.pinId,
      required this.pinCode,
      this.qrCode,
      this.category,
      this.sTime,
      this.eTime});

  factory _$LockPinImpl.fromJson(Map<String, dynamic> json) =>
      _$$LockPinImplFromJson(json);

  @override
  final String pinId;
  @override
  final String pinCode;
  @override
  final String? qrCode;
  @override
  final String? category;
  @override
  final String? sTime;
  @override
  final String? eTime;

  @override
  String toString() {
    return 'LockPin(pinId: $pinId, pinCode: $pinCode, qrCode: $qrCode, category: $category, sTime: $sTime, eTime: $eTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockPinImpl &&
            (identical(other.pinId, pinId) || other.pinId == pinId) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sTime, sTime) || other.sTime == sTime) &&
            (identical(other.eTime, eTime) || other.eTime == eTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pinId, pinCode, qrCode, category, sTime, eTime);

  /// Create a copy of LockPin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockPinImplCopyWith<_$LockPinImpl> get copyWith =>
      __$$LockPinImplCopyWithImpl<_$LockPinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LockPinImplToJson(
      this,
    );
  }
}

abstract class _LockPin implements LockPin {
  const factory _LockPin(
      {required final String pinId,
      required final String pinCode,
      final String? qrCode,
      final String? category,
      final String? sTime,
      final String? eTime}) = _$LockPinImpl;

  factory _LockPin.fromJson(Map<String, dynamic> json) = _$LockPinImpl.fromJson;

  @override
  String get pinId;
  @override
  String get pinCode;
  @override
  String? get qrCode;
  @override
  String? get category;
  @override
  String? get sTime;
  @override
  String? get eTime;

  /// Create a copy of LockPin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockPinImplCopyWith<_$LockPinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
