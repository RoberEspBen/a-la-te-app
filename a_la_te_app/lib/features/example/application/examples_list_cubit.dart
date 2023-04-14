import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/example/application/examples_list_state.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:bloc/bloc.dart';

class ExamplesListCubit extends Cubit<ExamplesListState> {
  ExamplesListCubit({required ExampleRepository exampleRepository})
      : _exampleRepository = exampleRepository,
        super(const ExamplesListState());

  final ExampleRepository _exampleRepository;

  Future<void> getExamples() async {
    emit(
      state.copyWith(
        status: StateStatus.loading,
      ),
    );

    final result = await _exampleRepository.getExamples();

    result.when(
      (success) => emit(
        state.copyWith(
          examples: success,
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
