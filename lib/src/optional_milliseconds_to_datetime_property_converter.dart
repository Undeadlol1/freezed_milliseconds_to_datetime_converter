import 'package:freezed_annotation/freezed_annotation.dart';

class OptionalMillisecondsToDateTimeConverter
    implements JsonConverter<DateTime?, int?> {
  const OptionalMillisecondsToDateTimeConverter();

  @override
  DateTime? fromJson(int? milliseconds) {
    return milliseconds == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }

  @override
  int? toJson(DateTime? date) {
    return date == null ? null : date.millisecondsSinceEpoch;
  }
}
