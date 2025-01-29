import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_history.freezed.dart';
part 'lock_history.g.dart';

@freezed
class LockHistory with _$LockHistory {
  const factory LockHistory({
    required String etime,
    required String etype,
    required String userName,
    required String value,
  }) = _LockHistory;

  factory LockHistory.fromJson(Map<String, dynamic> json) =>
      _$LockHistoryFromJson(json);
}
