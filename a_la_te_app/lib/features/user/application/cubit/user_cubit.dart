import 'dart:async';

import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_state.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:bloc/bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({
    required UserRepository userRepository,
    required MatchRepository matchRepository,
  })  : _userRepository = userRepository,
        _matchRepository = matchRepository,
        super(const UserState());

  final UserRepository _userRepository;
  final MatchRepository _matchRepository;

  Future<void> getUser() async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _userRepository.getLoggedUser();

    result.when(
      (success) async {
        final playerId = success.id;
        emit(
          state.copyWith(
            user: success,
          ),
        );
        unawaited(
          getMatchesListByStatus(
            playerId: playerId,
            status: MatchStatus.matchCreated,
          ),
        );
        unawaited(
          getMatchesListByStatus(
            playerId: playerId,
            status: MatchStatus.scheduledMatch,
          ),
        );
        unawaited(
          getMatchesListByStatus(
            playerId: playerId,
            status: MatchStatus.matchPlayed,
          ),
        );
      },
      (error) => emit(
        state.copyWith(
          status: StateStatus.error,
          errorMessage: error.toString(),
        ),
      ),
    );
  }

  Future<void> getMatchesListByStatus({
    required int playerId,
    required MatchStatus status,
  }) async {
    final result = await _matchRepository.getMatchesByUserIdAndMatchStatus(
      id: playerId,
      matchStatus: status,
    );
    result.when(
      (success) async {
        switch (status) {
          case MatchStatus.matchCreated:
            emit(
              state.copyWith(
                matchesCreated: success,
                status: StateStatus.loaded,
              ),
            );
            break;
          case MatchStatus.matchPlayed:
            emit(
              state.copyWith(
                matchesPlayed: success,
                status: StateStatus.loaded,
              ),
            );
            break;
          case MatchStatus.scheduledMatch:
            emit(
              state.copyWith(
                scheduledMatches: success,
                status: StateStatus.loaded,
              ),
            );
            break;
        }
      },
      (error) => emit(
        state.copyWith(
          status: StateStatus.error,
          errorMessage: error.toString(),
        ),
      ),
    );
  }

  void setNewMatch({required MatchModel match}) {
    emit(state.copyWith(status: StateStatus.loading));
    final newCreatedMatchesList = List<MatchModel>.from(state.matchesCreated)
      ..add(match);

    emit(
      state.copyWith(
        status: StateStatus.loaded,
        matchesCreated: newCreatedMatchesList,
      ),
    );
  }

  void setNewScheduleMatch({required MatchModel match}) {
    emit(state.copyWith(status: StateStatus.loading));
    final newScheduleMatchesList = List<MatchModel>.from(state.scheduledMatches)
      ..add(match);

    emit(
      state.copyWith(
        status: StateStatus.loaded,
        scheduledMatches: newScheduleMatchesList,
      ),
    );
  }

  Future<void> setMatchResult({
    required MatchModel match,
    required int set1player1,
    required int set1player2,
    required int set2player1,
    required int set2player2,
    int? set3player1,
    int? set3player2,
  }) async {
    final isPlayer1Winner = _isPlayer1Winner(
      set1player1: set1player1,
      set1player2: set1player2,
      set2player1: set2player1,
      set2player2: set2player2,
      set3player1: set3player1,
      set3player2: set3player2,
    );
    final matchResult = <MatchSet>[
      MatchSet(firstPlayerGames: set1player1, secondPlayerGames: set1player2),
      MatchSet(firstPlayerGames: set2player1, secondPlayerGames: set2player2),
    ];
    if (set3player1 != null && set3player2 != null) {
      matchResult.add(
        MatchSet(
          firstPlayerGames: set3player1,
          secondPlayerGames: set3player2,
        ),
      );
    }

    final result = await _matchRepository.setMatchResult(
      isPlayer1Winner: isPlayer1Winner,
      match: match,
      matchResult: matchResult,
    );

    result.when((success) {
      _setNewMatchesLists(
        newMatch: success,
        isWinner: isPlayer1Winner,
      );
    }, (error) {
      emit(
        state.copyWith(
          status: StateStatus.error,
          errorMessage: error.toString(),
        ),
      );
    });

    emit(
      state.copyWith(),
    );
  }

  bool _isPlayer1Winner({
    required int set1player1,
    required int set1player2,
    required int set2player1,
    required int set2player2,
    int? set3player1,
    int? set3player2,
  }) {
    if (set1player1 > set1player2 && set2player1 > set2player2) {
      return true;
    } else if (set1player1 < set1player2 && set2player1 < set2player2) {
      return false;
    } else if ((set1player1 > set1player2 && set2player1 < set2player2) ||
        (set1player1 < set1player2 && set2player1 > set2player2)) {
      if (set3player1! > set3player2!) {
        return true;
      }
    }
    return false;
  }

  void _setNewMatchesLists({
    required MatchModel newMatch,
    required bool isWinner,
  }) {
    final newScheduledMatchesList = <MatchModel>[];
    var newMatchesPlayedList = <MatchModel>[];
    for (var i = 0; i < state.scheduledMatches.length; i++) {
      if (!newMatch.matchDate!
          .isAtSameMomentAs(state.scheduledMatches[i].matchDate!)) {
        newScheduledMatchesList.add(state.scheduledMatches[i]);
      }
    }
    newMatchesPlayedList = List.from(state.matchesPlayed)..insert(0, newMatch);
    emit(
      state.copyWith(
        status: StateStatus.loaded,
        matchesPlayed: newMatchesPlayedList,
        scheduledMatches: newScheduledMatchesList,
        user: state.user.copyWith(
          playedMatches: state.user.playedMatches + 1,
          wonMatches:
              isWinner ? state.user.wonMatches + 1 : state.user.wonMatches,
        ),
      ),
    );
  }
}
