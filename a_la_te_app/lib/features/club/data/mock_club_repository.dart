//Las imagenes que aqui se utilizan han sido obtenidas de la siguiente url: https://www.flickr.com/photos/softsurfaces/albums/72157627662592181

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
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
        const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_4.jpg',
        ),
        const Club(
          id: '2',
          clubAddress: 'Calle de Murcia, 15, Murcia, España',
          clubName: 'Club de Tenis Murcia',
          clubImage: 'assets/images/clubs/tenis_6.jpg',
        ),
        const Club(
          id: '3',
          clubAddress: 'Calle del Deporte, 10, Cartagena, Murcia, España',
          clubName: 'Club de Tenis Cartagena',
          clubImage: 'assets/images/clubs/tenis_2.jpg',
        ),
        const Club(
          id: '4',
          clubAddress: 'Avenida de los Deportes, 5, Lorca, Murcia, España',
          clubName: 'Club de Tenis Lorca',
          clubImage: 'assets/images/clubs/tenis_3.jpg',
        ),
        const Club(
          id: '5',
          clubAddress: 'Calle del Tenis, 8, Molina de Segura, Murcia, España',
          clubName: 'Club de Tenis Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_5.jpg',
        ),
        const Club(
          id: '6',
          clubAddress: 'Calle del Deporte, 25, San Javier, Murcia, España',
          clubName: 'Club de Tenis San Javier',
          clubImage: 'assets/images/clubs/tenis_8.jpg',
        ),
        const Club(
          id: '7',
          clubAddress:
              'Calle del Tenis, 20, San Pedro del Pinatar, Murcia, España',
          clubName: 'Club de Tenis San Pedro del Pinatar',
          clubImage: 'assets/images/clubs/tenis_8.jpg',
        ),
        const Club(
          id: '8',
          clubAddress: 'Calle de los Deportes, 8, Alcantarilla, Murcia, España',
          clubName: 'Club de Tenis Alcantarilla',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
        const Club(
          id: '9',
          clubAddress:
              'Calle de la Raqueta, 12, Molina de Segura, Murcia, España',
          clubName: 'Club de Tenis Raqueta Molina',
          clubImage: 'assets/images/clubs/tenis_7.jpg',
        ),
      ];

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
