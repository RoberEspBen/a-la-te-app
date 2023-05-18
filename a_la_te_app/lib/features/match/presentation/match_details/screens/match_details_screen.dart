import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:flutter/material.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Details Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              match.clubAddress,
            ),
            const Divider(
              thickness: 3,
            ),
            Text(match.firstPlayerName),
          ],
        ),
      ),
    );
  }
}
