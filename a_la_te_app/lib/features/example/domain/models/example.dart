import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';
part 'example.g.dart';

@freezed
class Example with _$Example{
  const factory Example({
    required String id,
    @Default('') String title,
    @Default('') String description,
  }) = _Example;

  factory Example.fromJson(Map<String, Object?> json) =>
  _$ExampleFromJson(json);
}
