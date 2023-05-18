import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/presentation/matches_list/widgets/match_card.dart';
import 'package:flutter/material.dart';

class MatchesList extends StatelessWidget {
  const MatchesList({super.key, required this.matches});

  final List<MatchModel> matches;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: matches.length,
      itemBuilder: (context, index) {
        return MatchCard(match: matches[index]);
      },
    );
  }
}
