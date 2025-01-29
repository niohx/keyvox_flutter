// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LockHistoryImpl _$$LockHistoryImplFromJson(Map<String, dynamic> json) =>
    _$LockHistoryImpl(
      etime: json['etime'] as String,
      etype: json['etype'] as String,
      userName: json['userName'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$LockHistoryImplToJson(_$LockHistoryImpl instance) =>
    <String, dynamic>{
      'etime': instance.etime,
      'etype': instance.etype,
      'userName': instance.userName,
      'value': instance.value,
    };
