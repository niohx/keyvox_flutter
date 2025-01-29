// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitImpl _$$UnitImplFromJson(Map<String, dynamic> json) => _$UnitImpl(
      unitId: json['unitId'] as String,
      unitName: json['unitName'] as String,
      lockIds: json['lockIds'] as String,
      placeName: json['placeName'] as String,
      unitState: json['unitState'] as String,
      unitType: json['unitType'] as String,
      placeType: json['placeType'] as String,
    );

Map<String, dynamic> _$$UnitImplToJson(_$UnitImpl instance) =>
    <String, dynamic>{
      'unitId': instance.unitId,
      'unitName': instance.unitName,
      'lockIds': instance.lockIds,
      'placeName': instance.placeName,
      'unitState': instance.unitState,
      'unitType': instance.unitType,
      'placeType': instance.placeType,
    };
