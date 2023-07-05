import 'package:freezed_annotation/freezed_annotation.dart';

part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    @Default('') String clubName,
    @Default('') String clubAddress,
    @Default(null) String? clubImage,
  }) = _Club;

  factory Club.fromJson(Map<String, Object?> json) => _$ClubFromJson(json);
}
