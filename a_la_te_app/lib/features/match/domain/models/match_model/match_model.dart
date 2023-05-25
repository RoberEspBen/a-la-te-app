import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

enum MatchStatus {
  matchCreated,
  scheduledMatch,
  matchPlayed,
}

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    @Default(MatchStatus.matchCreated) MatchStatus matchStatus,
    @Default(0) int firstPlayerId,
    @Default('') String firstPlayerName,
    @Default(0) int firstPlayerLevel,
    @Default(null) String? firstPlayerPhoto,
    @Default(null) int? secondPlayerId,
    @Default(null) String? secondPlayerName,
    @Default(null) int? secondPlayerLevel,
    @Default(null) String? secondPlayerPhoto,
    @Default('') String clubName,
    @Default('') String clubAddress,
    @Default(null) String? clubImage,
    @Default(null) DateTime? matchDate,
    @Default(0) int initialHour,
    @Default(0) int finalHour,
    @Default(null) List<MatchSet>? matchResult,
    @Default(0) int? winningPlayerId,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}
