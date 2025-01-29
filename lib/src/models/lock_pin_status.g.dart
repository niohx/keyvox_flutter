// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_pin_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LockPinStatusImpl _$$LockPinStatusImplFromJson(Map<String, dynamic> json) =>
    _$LockPinStatusImpl(
      pinId: json['pinId'] as String,
      status: json['status'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LockPinStatusImplToJson(_$LockPinStatusImpl instance) =>
    <String, dynamic>{
      'pinId': instance.pinId,
      'status': instance.status,
      'message': instance.message,
    };
