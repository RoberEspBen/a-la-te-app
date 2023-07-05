import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class ClubRepository {
  Future<Result<List<Club>, Exception>> getClubs();
}
