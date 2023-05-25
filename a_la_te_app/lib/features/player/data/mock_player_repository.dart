import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockPlayerRepository extends PlayerRepository {
  MockPlayerRepository();

  @override
  Future<Result<Player, Exception>> getPlayerById({required int id}) async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    switch (id) {
      case 1:
        return const Success(
          Player(
            id: 1,
            nif: '80808080V',
            email: 'pamema@gmail.com',
            name: 'Juan Pérez',
            description:
                'Jugador de club ocasional a la espera de nuevos retos',
            mobilePhoneNumber: '666665664',
            level: '2',
            skillfullHand: 'Derecha',
            wonMatches: 9,
            playedMatches: 12,
          ),
        );
      case 2:
        return const Success(
          Player(
            id: 2,
            nif: '40404040V',
            email: 'robe@gmail.com',
            name: 'Roberto Espinosa',
            description:
                'Llevo 10 años jugando regularmente y estoy deseando encontrar rivales a mi altura!',
            mobilePhoneNumber: '667668669',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 4,
            playedMatches: 6,
          ),
        );
      default:
        return const Success(
          Player(
            id: 3,
            nif: '60606060V',
            email: 'pacopons@gmail.com',
            name: 'Paco Pons',
            description: '¡Me encanta el tenis!',
            mobilePhoneNumber: '654564531',
            level: '3',
            skillfullHand: 'Derecha',
            wonMatches: 2,
            playedMatches: 4,
          ),
        );
    }
  }
}
