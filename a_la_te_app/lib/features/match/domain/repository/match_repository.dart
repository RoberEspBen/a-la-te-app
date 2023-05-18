import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class MatchRepository {
  Future<Result<List<MatchModel>, Exception>> getMatches();
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserId({
    required int id,
  });
}
