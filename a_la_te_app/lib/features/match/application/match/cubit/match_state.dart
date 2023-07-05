import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_state.freezed.dart';

@freezed
class MatchState with _$MatchState {
  const factory MatchState({
    @Default([]) List<MatchModel> matches,
    @Default([]) List<MatchModel> filterMatches,
    @Default('') String currentFilterValue,
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _MatchState;
}
