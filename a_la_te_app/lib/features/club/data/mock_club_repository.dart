import 'package:a_la_te_app/features/club/domain/repository/club_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockClubRepository extends ClubRepository {
  MockClubRepository();

  @override
  Future<Result<List<String>, Exception>> getClubs() async {
    try {
      final result = <String>[
        'Polideportivo Las Torres',
        'Polideportivo Molina de Segura',
      ];

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
