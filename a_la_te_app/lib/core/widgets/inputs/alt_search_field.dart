import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ALTSearchField extends StatefulWidget {
  const ALTSearchField({super.key, required this.onChanged});

  final void Function(String value) onChanged;

  @override
  State<ALTSearchField> createState() => _ALTSearchFieldState();
}

class _ALTSearchFieldState extends State<ALTSearchField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundGrey3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.black3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: _controller,
        style: AppTextStyle.f12w500,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            splashRadius: 20,
            icon: const FaIcon(
              FontAwesomeIcons.xmark,
              color: AppColors.primary,
              size: 20,
            ),
            onPressed: () {
              _controller.clear();
              widget.onChanged('');
            },
          ),
          icon: const Padding(
            padding: EdgeInsets.only(
              left: AppSpaces.s10,
            ),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: AppColors.primary,
            ),
          ),
          hintText: 'Buscar...',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          widget.onChanged(value);
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
