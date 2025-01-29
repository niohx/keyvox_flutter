import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
class Unit with _$Unit {
  const factory Unit({
    required String unitId,
    required String unitName,
    required String lockIds,
    required String placeName,
    required String unitState,
    required String unitType,
    required String placeType,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}
