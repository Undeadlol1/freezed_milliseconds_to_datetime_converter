import 'package:freezed_annotation/freezed_annotation.dart';

class MillisecondsToDateTimeConverter implements JsonConverter<DateTime, int> {
  const MillisecondsToDateTimeConverter();

  @override
  DateTime fromJson(int milliseconds) {
    return DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }

  @override
  int toJson(DateTime date) => date.millisecondsSinceEpoch;
}
