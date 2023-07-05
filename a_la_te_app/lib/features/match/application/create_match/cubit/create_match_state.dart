import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_match_state.freezed.dart';

@freezed
class CreateMatchState with _$CreateMatchState {
  const factory CreateMatchState({
    @Default(null) DateTime? matchDate,
    @Default(null) TimeOfDay? matchInitialHour,
    @Default(null) TimeOfDay? matchFinalHour,
    @Default([]) List<Club>? clubs,
    @Default(null) Club? selectedClub,
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _CreateMatchState;
}
