import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_match_state.freezed.dart';

@freezed
class CreateMatchState with _$CreateMatchState {
  const factory CreateMatchState({
    @Default(null) DateTime? matchDate,
    @Default(null) TimeOfDay? matchInitialHour,
    @Default(null) TimeOfDay? matchFinalHour,
    @Default([]) List<String>? clubs,
    @Default(null) String? clubName,
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _CreateMatchState;
}
