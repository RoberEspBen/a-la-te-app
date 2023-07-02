import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showClubSelectorModal({
  required BuildContext context,
  List<String>? clubs,
  required String? currentClubSelected,
  required Future<void> Function({String? clubName}) submitAction,
}) {
  showALTModal(
    context: context,
    content: _ClubSelectorModal(
      submitAction: submitAction,
      clubs: clubs,
      currentClubSelected: currentClubSelected,
    ),
  );
}

class _ClubSelectorModal extends StatefulWidget {
  const _ClubSelectorModal({
    super.key,
    this.clubs,
    required this.currentClubSelected,
    required this.submitAction,
  });

  final List<String>? clubs;
  final String? currentClubSelected;
  final Future<void> Function({String? clubName}) submitAction;

  @override
  State<_ClubSelectorModal> createState() => __ClubSelectorModalState();
}

class __ClubSelectorModalState extends State<_ClubSelectorModal> {
  String? clubSelectedInList;

  @override
  void initState() {
    clubSelectedInList = widget.currentClubSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selecciona un club',
          style: AppTextStyle.f14w600,
        ),
        AppSpaces.gapH12,
        SizedBox(
          child: _ClubList(
            clubs: widget.clubs ?? [],
            currentSelectedClub: clubSelectedInList,
            setClubSelected: ({
              required String club,
            }) {
              setState(() {
                clubSelectedInList = club;
              });
            },
          ),
        ),
        const Divider(
          thickness: 0.75,
          color: AppColors.primary,
        ),
        AppSpaces.gapH12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ALTButton(
                model: ALTButtonModel(
                  type: ALTButtonType.secondary,
                  text: 'Cancelar',
                ),
                onPressed: context.pop,
              ),
            ),
            AppSpaces.gapW24,
            Expanded(
              child: ALTButton(
                model: ALTButtonModel(
                  type: ALTButtonType.primary,
                  text: 'Aceptar',
                ),
                onPressed: () {
                  widget.submitAction(clubName: clubSelectedInList);
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ClubList extends StatelessWidget {
  const _ClubList({
    super.key,
    required this.clubs,
    this.currentSelectedClub,
    required this.setClubSelected,
  });

  final List<String> clubs;
  final String? currentSelectedClub;
  final void Function({required String club}) setClubSelected;

  @override
  Widget build(BuildContext context) {
    if (clubs.isEmpty) {
      return const Text('Ha ocurrido un error cargando los clubs');
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: clubs.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setClubSelected(
              club: clubs[index],
            );
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpaces.s12),
            decoration: BoxDecoration(
              color: currentSelectedClub != null &&
                      currentSelectedClub!.compareTo(clubs[index]) == 0
                  ? AppColors.primary
                  : AppColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              clubs[index],
              style: AppTextStyle.f14w500.copyWith(
                color: currentSelectedClub != null &&
                        currentSelectedClub!.compareTo(clubs[index]) == 0
                    ? AppColors.white
                    : AppColors.primary,
              ),
            ),
          ),
        );
      },
    );
  }
}
