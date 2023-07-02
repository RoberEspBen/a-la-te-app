import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
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
    required String clubName,
    required DateTime matchDate,
    required TimeOfDay initialTime,
    required TimeOfDay finalTime,
    required User user,
  });
}
