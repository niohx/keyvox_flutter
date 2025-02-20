// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$Unit {
  String get unitId => throw _privateConstructorUsedError;
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
  List<String>? get lockIds => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get unitState => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;
  String get placeType => throw _privateConstructorUsedError;

  /// Serializes this Unit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitCopyWith<Unit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res, Unit>;
  @useResult
  $Res call(
      {String unitId,
      String unitName,
      @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
      List<String>? lockIds,
      String placeName,
      String unitState,
      String? unitType,
      String placeType});
}

/// @nodoc
class _$UnitCopyWithImpl<$Res, $Val extends Unit>
    implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? unitName = null,
    Object? lockIds = freezed,
    Object? placeName = null,
    Object? unitState = null,
    Object? unitType = freezed,
    Object? placeType = null,
  }) {
    return _then(_value.copyWith(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      lockIds: freezed == lockIds
          ? _value.lockIds
          : lockIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      unitState: null == unitState
          ? _value.unitState
          : unitState // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitImplCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$$UnitImplCopyWith(
          _$UnitImpl value, $Res Function(_$UnitImpl) then) =
      __$$UnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String unitId,
      String unitName,
      @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
      List<String>? lockIds,
      String placeName,
      String unitState,
      String? unitType,
      String placeType});
}

/// @nodoc
class __$$UnitImplCopyWithImpl<$Res>
    extends _$UnitCopyWithImpl<$Res, _$UnitImpl>
    implements _$$UnitImplCopyWith<$Res> {
  __$$UnitImplCopyWithImpl(_$UnitImpl _value, $Res Function(_$UnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? unitName = null,
    Object? lockIds = freezed,
    Object? placeName = null,
    Object? unitState = null,
    Object? unitType = freezed,
    Object? placeType = null,
  }) {
    return _then(_$UnitImpl(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      lockIds: freezed == lockIds
          ? _value._lockIds
          : lockIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      unitState: null == unitState
          ? _value.unitState
          : unitState // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitImpl implements _Unit {
  const _$UnitImpl(
      {required this.unitId,
      required this.unitName,
      @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
      final List<String>? lockIds,
      required this.placeName,
      required this.unitState,
      this.unitType,
      required this.placeType})
      : _lockIds = lockIds;

  factory _$UnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitImplFromJson(json);

  @override
  final String unitId;
  @override
  final String unitName;
  final List<String>? _lockIds;
  @override
  @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
  List<String>? get lockIds {
    final value = _lockIds;
    if (value == null) return null;
    if (_lockIds is EqualUnmodifiableListView) return _lockIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String placeName;
  @override
  final String unitState;
  @override
  final String? unitType;
  @override
  final String placeType;

  @override
  String toString() {
    return 'Unit(unitId: $unitId, unitName: $unitName, lockIds: $lockIds, placeName: $placeName, unitState: $unitState, unitType: $unitType, placeType: $placeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            const DeepCollectionEquality().equals(other._lockIds, _lockIds) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.unitState, unitState) ||
                other.unitState == unitState) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      unitId,
      unitName,
      const DeepCollectionEquality().hash(_lockIds),
      placeName,
      unitState,
      unitType,
      placeType);

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      __$$UnitImplCopyWithImpl<_$UnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitImplToJson(
      this,
    );
  }
}

abstract class _Unit implements Unit {
  const factory _Unit(
      {required final String unitId,
      required final String unitName,
      @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
      final List<String>? lockIds,
      required final String placeName,
      required final String unitState,
      final String? unitType,
      required final String placeType}) = _$UnitImpl;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$UnitImpl.fromJson;

  @override
  String get unitId;
  @override
  String get unitName;
  @override
  @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
  List<String>? get lockIds;
  @override
  String get placeName;
  @override
  String get unitState;
  @override
  String? get unitType;
  @override
  String get placeType;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
