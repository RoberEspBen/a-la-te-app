import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:a_la_te_app/features/club/domain/repository/club_repository.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_state.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CreateMatchCubit extends Cubit<CreateMatchState> {
  CreateMatchCubit({
    required MatchRepository matchRepository,
    required ClubRepository clubRepository,
    required UserCubit userCubit,
  })  : _matchRepository = matchRepository,
        _clubRepository = clubRepository,
        _userCubit = userCubit,
        super(const CreateMatchState());

  final MatchRepository _matchRepository;
  final ClubRepository _clubRepository;
  final UserCubit _userCubit;

  void reset() {
    emit(
      state.copyWith(
        selectedClub: null,
        matchDate: null,
        matchFinalHour: null,
        matchInitialHour: null,
        status: StateStatus.initial,
      ),
    );
  }

  Future<void> init() async {
    final response = await _clubRepository.getClubs();

    response.when((success) {
      emit(
        CreateMatchState(
          clubs: success,
        ),
      );
    }, (error) {
      emit(
        CreateMatchState(
          status: StateStatus.error,
          errorMessage: error.toString(),
        ),
      );
    });
  }

  Future<void> selectDate({
    DateTime? date,
  }) async {
    date ??= state.matchDate ??
        DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        );

    emit(
      state.copyWith(
        matchDate: date,
      ),
    );
  }

  Future<void> selectClub({
    Club? club,
  }) async {
    club ??= state.selectedClub;

    emit(
      state.copyWith(
        selectedClub: club,
      ),
    );
  }

  void selectTime({
    required String initialTime,
    required String finalTime,
  }) {
    emit(
      state.copyWith(
        matchInitialHour: TimeOfDay(
          hour: int.parse(initialTime.split(':')[0]),
          minute: 0,
        ),
        matchFinalHour: TimeOfDay(
          hour: int.parse(finalTime.split(':')[0]),
          minute: 0,
        ),
      ),
    );
  }

  Future<void> createMatch() async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );
    final result = await _matchRepository.createMatch(
      club: state.selectedClub!,
      matchDate: state.matchDate!,
      initialTime: state.matchInitialHour!,
      finalTime: state.matchFinalHour!,
      user: _userCubit.state.user,
    );

    result.when(
      (success) {
        _userCubit.setNewMatch(match: success);
        emit(
          state.copyWith(
            status: StateStatus.loaded,
          ),
        );
      },
      (error) => emit(
        state.copyWith(
          status: StateStatus.error,
        ),
      ),
    );
  }
}
