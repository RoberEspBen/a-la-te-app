import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'examples_list_state.freezed.dart';

@freezed
class ExamplesListState with _$ExamplesListState {
  const factory ExamplesListState({
    @Default([]) List<Example> examples,
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _ExamplesListState;
}
