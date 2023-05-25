import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/application/match_details/cubit/match_details_state.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
import 'package:bloc/bloc.dart';

class MatchDetailsCubit extends Cubit<MatchDetailsState> {
  MatchDetailsCubit({required PlayerRepository playerRepository})
      : _playerRepository = playerRepository,
        super(const MatchDetailsState());

  final PlayerRepository _playerRepository;

  Future<void> getPlayersById({
    required int firstPlayerId,
    int? secondPlayerId,
  }) async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _playerRepository.getPlayerById(id: firstPlayerId);

    result.when(
      (success) async {
        emit(
          state.copyWith(
            firstPlayer: success,
          ),
        );
        if (secondPlayerId != null) {
          final result2 = await _playerRepository.getPlayerById(
            id: secondPlayerId,
          );
          result2.when(
            (success) => emit(
              state.copyWith(
                secondPlayer: success,
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
        } else {
          emit(
            state.copyWith(
              status: StateStatus.loaded,
            ),
          );
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
}
