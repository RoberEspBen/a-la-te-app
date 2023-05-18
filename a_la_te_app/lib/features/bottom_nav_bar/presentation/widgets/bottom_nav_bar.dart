import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.options,
    required this.currentOptionIndex,
  });

  final List<BottomNavBarOptionModel> options;
  final int currentOptionIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: AppTextStyle.f12w500,
      unselectedLabelStyle: AppTextStyle.f12w500,
      currentIndex: currentOptionIndex,
      items: List.generate(
        options.length,
        (index) => _createBottomNavBarItem(
          icon: options[index].icon,
          name: options[index].name,
        ),
      ),
      onTap: (value) {
        //Navigator.of(context).pop();
        context.goNamed(options[value].routeName);
      },
    );
  }

  BottomNavigationBarItem _createBottomNavBarItem({
    required IconData icon,
    required String name,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: name,
    );
  }
}
