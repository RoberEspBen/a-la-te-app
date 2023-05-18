import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required int id,
    @Default('') String nif,
    @Default('') String email,
    @Default('') String name,
    @Default(null) String? description,
    @Default(null) String? playerPhoto,
    @Default('') String mobilePhoneNumber,
    @Default('') String level,
    @Default('') String skillfullHand,
    @Default(0) int wonMatches,
    @Default(0) int playedMatches,
  }) = _Player;

  factory Player.fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}
