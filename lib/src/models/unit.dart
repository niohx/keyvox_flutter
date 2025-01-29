import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
class Unit with _$Unit {
  const factory Unit({
    required String unitId,
    required String unitName,
    @JsonKey(fromJson: _lockIdsFromJson, toJson: _lockIdsToJson)
    List<String>? lockIds,
    required String placeName,
    required String unitState,
    String? unitType,
    required String placeType,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

List<String>? _lockIdsFromJson(String? value) {
  if (value == null) return null;
  return value.split(',');
}

String? _lockIdsToJson(List<String>? list) {
  if (list == null) return null;
  return list.join(',');
}
