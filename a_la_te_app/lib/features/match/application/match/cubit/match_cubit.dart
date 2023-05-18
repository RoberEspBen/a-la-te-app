import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_state.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
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

  Future<void> getMatchesByUserId({required int id}) async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _matchRepository.getMatchesByUserId(id: id);

    result.when(
      (success) => emit(
        state.copyWith(
          matchesByUserId: success,
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
}
