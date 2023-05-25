import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/profile/presentation/widgets/played_match_card.dart';
import 'package:flutter/material.dart';

class HorizontalMatchesList extends StatelessWidget {
  const HorizontalMatchesList({
    super.key,
    required this.matches,
    required this.playerId,
  });

  final List<MatchModel> matches;
  final int playerId;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: matches.length <= 5 ? matches.length : 5,
      itemBuilder: (context, index) {
        return PlayedMatchCard(
          match: matches[index],
          playerId: playerId,
        );
      },
    );
  }
}
