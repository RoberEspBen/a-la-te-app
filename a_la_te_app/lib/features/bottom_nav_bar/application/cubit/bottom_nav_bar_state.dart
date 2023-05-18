import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_bar_state.freezed.dart';

class BottomNavBarOptionModel {
  BottomNavBarOptionModel({
    required this.name,
    required this.icon,
    required this.routeLocation,
    required this.routeName,
  });

  final String name;
  final IconData icon;
  final String routeLocation;
  final String routeName;
}

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    @Default([]) List<BottomNavBarOptionModel> options,
    @Default(0) int currentOptionIndex,
  }) = _BottomNavBarState;
}
