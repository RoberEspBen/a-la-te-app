import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:flutter/material.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class MatchRepository {
  Future<Result<List<MatchModel>, Exception>> getMatches();
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserId({
    required int id,
  });
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserIdAndMatchStatus({
    required int id,
    required MatchStatus matchStatus,
  });
  Future<Result<MatchModel, Exception>> createMatch({
    required Club club,
    required DateTime matchDate,
    required TimeOfDay initialTime,
    required TimeOfDay finalTime,
    required User user,
  });

  Future<Result<MatchModel, Exception>> setSecondPlayer({
    required MatchModel match,
    required Player player,
  });

  Future<Result<MatchModel, Exception>> setMatchResult({
    required MatchModel match,
    required List<MatchSet> matchResult,
    required bool isPlayer1Winner,
  });
}
