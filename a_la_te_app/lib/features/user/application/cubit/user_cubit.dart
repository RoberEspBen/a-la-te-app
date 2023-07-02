import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_state.dart';
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
        final result2 = await _matchRepository.getMatchesByUserIdAndMatchStatus(
          id: playerId,
          matchStatus: MatchStatus.matchCreated,
        );
        result2.when(
          (success) async {
            emit(
              state.copyWith(
                matchesCreated: success,
              ),
            );
            final result3 =
                await _matchRepository.getMatchesByUserIdAndMatchStatus(
              id: playerId,
              matchStatus: MatchStatus.scheduledMatch,
            );
            result3.when(
              (success) async {
                emit(
                  state.copyWith(
                    scheduledMatches: success,
                  ),
                );
                final result4 =
                    await _matchRepository.getMatchesByUserIdAndMatchStatus(
                  id: playerId,
                  matchStatus: MatchStatus.matchPlayed,
                );
                result4.when(
                  (success) => emit(
                    state.copyWith(
                      status: StateStatus.loaded,
                      matchesPlayed: success,
                    ),
                  ),
                  (error) => emit(
                    state.copyWith(
                      status: StateStatus.error,
                      errorMessage: error.toString(),
                    ),
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
          },
          (error) => emit(
            state.copyWith(
              status: StateStatus.error,
              errorMessage: error.toString(),
            ),
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
}
