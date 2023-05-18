import 'package:a_la_te_app/features/bottom_nav_bar/application/cubit/bottom_nav_bar_cubit.dart';
import 'package:a_la_te_app/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:a_la_te_app/features/bottom_nav_bar/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({
    super.key,
    required this.child,
    required this.currentRouteLocation,
  });

  final Widget child;
  final String currentRouteLocation;

  @override
  Widget build(BuildContext context) {
    context
        .read<BottomNavBarCubit>()
        .changeCurrentIndexByCurrentLocation(currentRouteLocation);
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.options[state.currentOptionIndex].name,
            ),
          ),
          body: child,
          bottomNavigationBar: BottomNavBar(
            options: state.options,
            currentOptionIndex: state.currentOptionIndex,
          ),
        );
      },
    );
  }
}
