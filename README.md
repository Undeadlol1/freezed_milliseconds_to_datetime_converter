Easily transform your int properties into DateTimes.

## What:

* Before
```dart
@freezed
class Task with _$Task {
  const factory Task({
    required int createdAt,
    int? updatedAt,
  }) = _Task;
}
```

* After
```dart
@freezed
class Task with _$Task {
  const factory Task({
    @MillisecondsToDateTimeConverter() required DateTime createdAt,
    @OptionalMillisecondsToDateTimeConverter() DateTime? updatedAt,
  }) = _Task;
}
```

## How:

1) Change your ints to DateTimes as shown in previous section
2) Run builder to rebuild the freezed classes:
>`dart run build_runner build --delete-conflicting-outputs`