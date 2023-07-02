import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class ClubRepository {
  Future<Result<List<String>, Exception>> getClubs();
}
