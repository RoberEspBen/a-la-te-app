import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_details_state.freezed.dart';

@freezed
class MatchDetailsState with _$MatchDetailsState {
  const factory MatchDetailsState({
    @Default(null) Player? player,
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _MatchDetailsState;
}
