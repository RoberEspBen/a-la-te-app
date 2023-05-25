import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState());

  Future<void> init() async {
    emit(
      state.copyWith(
        options: [
          BottomNavBarOptionModel(
            name: 'Contador',
            icon: Icons.punch_clock_rounded,
            routeLocation: '/',
            routeName: AppRoute.startApp.name,
          ),
          BottomNavBarOptionModel(
            name: 'Partidos',
            icon: Icons.sports,
            routeLocation: '/matchesList',
            routeName: AppRoute.matchesList.name,
          ),
          BottomNavBarOptionModel(
            name: 'Perfil',
            icon: Icons.person,
            routeLocation: '/profile',
            routeName: AppRoute.profile.name,
          ),
        ],
      ),
    );
  }

  void changeCurrentIndexByCurrentLocation(String currentLocation) {
    final index = state.options.indexWhere(
      (element) => element.routeLocation == currentLocation,
    );
    emit(
      state.copyWith(
        currentOptionIndex: index,
      ),
    );
  }
}
