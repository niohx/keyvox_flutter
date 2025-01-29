// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_pin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LockPinImpl _$$LockPinImplFromJson(Map<String, dynamic> json) =>
    _$LockPinImpl(
      pinId: json['pinId'] as String,
      pinCode: json['pinCode'] as String,
      qrCode: json['qrCode'] as String?,
      category: json['category'] as String?,
      sTime: json['sTime'] as String?,
      eTime: json['eTime'] as String?,
    );

Map<String, dynamic> _$$LockPinImplToJson(_$LockPinImpl instance) =>
    <String, dynamic>{
      'pinId': instance.pinId,
      'pinCode': instance.pinCode,
      'qrCode': instance.qrCode,
      'category': instance.category,
      'sTime': instance.sTime,
      'eTime': instance.eTime,
    };
