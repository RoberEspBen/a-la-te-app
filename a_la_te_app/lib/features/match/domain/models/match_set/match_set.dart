import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_set.freezed.dart';
part 'match_set.g.dart';

@freezed
class MatchSet with _$MatchSet {
  const factory MatchSet({
    @Default(0) int firstPlayerGames,
    @Default(0) int secondPlayerGames,
  }) = _MatchSet;

  factory MatchSet.fromJson(Map<String, Object?> json) =>
      _$MatchSetFromJson(json);
}
