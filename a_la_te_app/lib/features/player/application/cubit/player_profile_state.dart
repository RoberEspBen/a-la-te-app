import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_profile_state.freezed.dart';

@freezed
class PlayerProfileState with _$PlayerProfileState {
  const factory PlayerProfileState({
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<MatchModel> matchesPlayed,
    @Default('') String errorMessage,
  }) = _PlayerProfileState;
}
