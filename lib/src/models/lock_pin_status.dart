import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_pin_status.freezed.dart';
part 'lock_pin_status.g.dart';

@freezed
class LockPinStatus with _$LockPinStatus {
  const factory LockPinStatus({
    required String pinId,
    required String status,
    String? message,
  }) = _LockPinStatus;

  factory LockPinStatus.fromJson(Map<String, dynamic> json) =>
      _$LockPinStatusFromJson(json);
}
