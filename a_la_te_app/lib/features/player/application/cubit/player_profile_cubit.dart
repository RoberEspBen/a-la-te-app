import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/application/cubit/player_profile_state.dart';
import 'package:bloc/bloc.dart';

class PlayerProfileCubit extends Cubit<PlayerProfileState> {
  PlayerProfileCubit({
    required MatchRepository matchRepository,
  })  : _matchRepository = matchRepository,
        super(const PlayerProfileState());

  final MatchRepository _matchRepository;

  Future<void> init(int id) async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _matchRepository.getMatchesByUserIdAndMatchStatus(
      id: id,
      matchStatus: MatchStatus.matchPlayed,
    );

    result.when(
      (success) => emit(
        state.copyWith(
          matchesPlayed: success,
          status: StateStatus.loaded,
        ),
      ),
      (error) => emit(
        state.copyWith(
          errorMessage: error.toString(),
          status: StateStatus.error,
        ),
      ),
    );
  }
}
