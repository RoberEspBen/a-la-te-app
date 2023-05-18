import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/match/application/cubit/match_cubit.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_state.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:bloc/bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({
    required UserRepository userRepository,
    required MatchCubit matchCubit,
  })  : _userRepository = userRepository,
        _matchCubit = matchCubit,
        super(const UserState());

  final UserRepository _userRepository;
  final MatchCubit _matchCubit;

  Future<void> getUser() async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _userRepository.getUser();

    result.when(
      (success) {
        emit(
          state.copyWith(
            user: success,
            status: StateStatus.loaded,
          ),
        );
        _matchCubit.getMatchesByUserId(id: success.id);
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
