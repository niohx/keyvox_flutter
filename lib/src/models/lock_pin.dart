import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_pin.freezed.dart';
part 'lock_pin.g.dart';

@freezed
class LockPin with _$LockPin {
  const factory LockPin({
    required String pinId,
    required String pinCode,
    String? qrCode,
    String? category,
    String? sTime,
    String? eTime,
  }) = _LockPin;

  factory LockPin.fromJson(Map<String, dynamic> json) =>
      _$LockPinFromJson(json);
}
