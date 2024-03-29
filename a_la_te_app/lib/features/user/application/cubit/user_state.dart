import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(User(id: 0)) User user,
    @Default(StateStatus.initial) StateStatus status,
    @Default([]) List<MatchModel> matchesPlayed,
    @Default([]) List<MatchModel> matchesCreated,
    @Default([]) List<MatchModel> scheduledMatches,
    @Default('') String errorMessage,
  }) = _UserState;
}
