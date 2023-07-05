import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_state.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:bloc/bloc.dart';

class MatchCubit extends Cubit<MatchState> {
  MatchCubit({required MatchRepository matchRepository})
      : _matchRepository = matchRepository,
        super(const MatchState());

  final MatchRepository _matchRepository;

  Future<void> getMatches() async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _matchRepository.getMatches();

    result.when(
      (success) => emit(
        state.copyWith(
          matches: success,
          filterMatches: success,
          status: StateStatus.loaded,
        ),
      ),
      (error) => emit(
        state.copyWith(
          status: StateStatus.error,
          errorMessage: error.toString(),
        ),
      ),
    );
  }

  void filterMatchesList(String value) {
    final newFilterMatchesList = <MatchModel>[];

    for (var i = 0; i < state.matches.length; i++) {
      if (value == '' ||
          state.matches[i].club!.clubName
              .toLowerCase()
              .contains(value.toLowerCase()) ||
          state.matches[i].firstPlayerName
              .toLowerCase()
              .contains(value.toLowerCase())) {
        newFilterMatchesList.add(state.matches[i]);
      }
    }

    emit(
      state.copyWith(
        status: StateStatus.loaded,
        filterMatches: newFilterMatchesList,
        currentFilterValue: value,
      ),
    );
  }

  Future<void> setSecondPlayer({
    required MatchModel match,
    required Player player,
  }) async {
    emit(state.copyWith(status: StateStatus.loading));

    final result =
        await _matchRepository.setSecondPlayer(match: match, player: player);

    result.when(
      (success) {
        setNewMatchesList(newMatch: success);
      },
      (error) => emit(
        state.copyWith(
          status: StateStatus.error,
        ),
      ),
    );
  }

  void setNewMatchesList({required MatchModel newMatch}) {
    final newMatchesList = <MatchModel>[];
    for (var i = 0; i < state.matches.length; i++) {
      if (!newMatch.matchDate!.isAtSameMomentAs(state.matches[i].matchDate!)) {
        newMatchesList.add(state.matches[i]);
      }
    }
    emit(
      state.copyWith(
        status: StateStatus.loaded,
        matches: newMatchesList,
        filterMatches: newMatchesList,
        currentFilterValue: '',
      ),
    );
  }
}
