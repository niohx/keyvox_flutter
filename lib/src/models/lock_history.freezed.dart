// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LockHistory _$LockHistoryFromJson(Map<String, dynamic> json) {
  return _LockHistory.fromJson(json);
}

/// @nodoc
mixin _$LockHistory {
  String get etime => throw _privateConstructorUsedError;
  String get etype => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this LockHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LockHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LockHistoryCopyWith<LockHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockHistoryCopyWith<$Res> {
  factory $LockHistoryCopyWith(
          LockHistory value, $Res Function(LockHistory) then) =
      _$LockHistoryCopyWithImpl<$Res, LockHistory>;
  @useResult
  $Res call({String etime, String etype, String userName, String value});
}

/// @nodoc
class _$LockHistoryCopyWithImpl<$Res, $Val extends LockHistory>
    implements $LockHistoryCopyWith<$Res> {
  _$LockHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LockHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etime = null,
    Object? etype = null,
    Object? userName = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      etime: null == etime
          ? _value.etime
          : etime // ignore: cast_nullable_to_non_nullable
              as String,
      etype: null == etype
          ? _value.etype
          : etype // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockHistoryImplCopyWith<$Res>
    implements $LockHistoryCopyWith<$Res> {
  factory _$$LockHistoryImplCopyWith(
          _$LockHistoryImpl value, $Res Function(_$LockHistoryImpl) then) =
      __$$LockHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String etime, String etype, String userName, String value});
}

/// @nodoc
class __$$LockHistoryImplCopyWithImpl<$Res>
    extends _$LockHistoryCopyWithImpl<$Res, _$LockHistoryImpl>
    implements _$$LockHistoryImplCopyWith<$Res> {
  __$$LockHistoryImplCopyWithImpl(
      _$LockHistoryImpl _value, $Res Function(_$LockHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of LockHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etime = null,
    Object? etype = null,
    Object? userName = null,
    Object? value = null,
  }) {
    return _then(_$LockHistoryImpl(
      etime: null == etime
          ? _value.etime
          : etime // ignore: cast_nullable_to_non_nullable
              as String,
      etype: null == etype
          ? _value.etype
          : etype // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockHistoryImpl implements _LockHistory {
  const _$LockHistoryImpl(
      {required this.etime,
      required this.etype,
      required this.userName,
      required this.value});

  factory _$LockHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LockHistoryImplFromJson(json);

  @override
  final String etime;
  @override
  final String etype;
  @override
  final String userName;
  @override
  final String value;

  @override
  String toString() {
    return 'LockHistory(etime: $etime, etype: $etype, userName: $userName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockHistoryImpl &&
            (identical(other.etime, etime) || other.etime == etime) &&
            (identical(other.etype, etype) || other.etype == etype) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, etime, etype, userName, value);

  /// Create a copy of LockHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockHistoryImplCopyWith<_$LockHistoryImpl> get copyWith =>
      __$$LockHistoryImplCopyWithImpl<_$LockHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LockHistoryImplToJson(
      this,
    );
  }
}

abstract class _LockHistory implements LockHistory {
  const factory _LockHistory(
      {required final String etime,
      required final String etype,
      required final String userName,
      required final String value}) = _$LockHistoryImpl;

  factory _LockHistory.fromJson(Map<String, dynamic> json) =
      _$LockHistoryImpl.fromJson;

  @override
  String get etime;
  @override
  String get etype;
  @override
  String get userName;
  @override
  String get value;

  /// Create a copy of LockHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockHistoryImplCopyWith<_$LockHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
