// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_pin_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LockPinStatus _$LockPinStatusFromJson(Map<String, dynamic> json) {
  return _LockPinStatus.fromJson(json);
}

/// @nodoc
mixin _$LockPinStatus {
  String get pinId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this LockPinStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LockPinStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LockPinStatusCopyWith<LockPinStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockPinStatusCopyWith<$Res> {
  factory $LockPinStatusCopyWith(
          LockPinStatus value, $Res Function(LockPinStatus) then) =
      _$LockPinStatusCopyWithImpl<$Res, LockPinStatus>;
  @useResult
  $Res call({String pinId, String status, String? message});
}

/// @nodoc
class _$LockPinStatusCopyWithImpl<$Res, $Val extends LockPinStatus>
    implements $LockPinStatusCopyWith<$Res> {
  _$LockPinStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LockPinStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockPinStatusImplCopyWith<$Res>
    implements $LockPinStatusCopyWith<$Res> {
  factory _$$LockPinStatusImplCopyWith(
          _$LockPinStatusImpl value, $Res Function(_$LockPinStatusImpl) then) =
      __$$LockPinStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinId, String status, String? message});
}

/// @nodoc
class __$$LockPinStatusImplCopyWithImpl<$Res>
    extends _$LockPinStatusCopyWithImpl<$Res, _$LockPinStatusImpl>
    implements _$$LockPinStatusImplCopyWith<$Res> {
  __$$LockPinStatusImplCopyWithImpl(
      _$LockPinStatusImpl _value, $Res Function(_$LockPinStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of LockPinStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$LockPinStatusImpl(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockPinStatusImpl implements _LockPinStatus {
  const _$LockPinStatusImpl(
      {required this.pinId, required this.status, this.message});

  factory _$LockPinStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$LockPinStatusImplFromJson(json);

  @override
  final String pinId;
  @override
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'LockPinStatus(pinId: $pinId, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockPinStatusImpl &&
            (identical(other.pinId, pinId) || other.pinId == pinId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pinId, status, message);

  /// Create a copy of LockPinStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockPinStatusImplCopyWith<_$LockPinStatusImpl> get copyWith =>
      __$$LockPinStatusImplCopyWithImpl<_$LockPinStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LockPinStatusImplToJson(
      this,
    );
  }
}

abstract class _LockPinStatus implements LockPinStatus {
  const factory _LockPinStatus(
      {required final String pinId,
      required final String status,
      final String? message}) = _$LockPinStatusImpl;

  factory _LockPinStatus.fromJson(Map<String, dynamic> json) =
      _$LockPinStatusImpl.fromJson;

  @override
  String get pinId;
  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of LockPinStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockPinStatusImplCopyWith<_$LockPinStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
