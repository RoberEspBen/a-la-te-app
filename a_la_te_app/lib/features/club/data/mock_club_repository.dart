import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:a_la_te_app/features/club/domain/repository/club_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockClubRepository extends ClubRepository {
  MockClubRepository();

  @override
  Future<Result<List<Club>, Exception>> getClubs() async {
    try {
      final result = <Club>[
        const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
        ),
        const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_molina.jpg',
        ),
      ];

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
