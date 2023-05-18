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

    return Success(
      Player(
        id: id,
        nif: '80808080V',
        email: 'pamema@gmail.com',
        name: 'Juan Pérez',
        description: 'Jugador de club ocasional a la espera de nuevos retos',
        mobilePhoneNumber: '666665664',
        level: '2',
        skillfullHand: 'Derecha',
        wonMatches: 9,
        playedMatches: 12,
      ),
    );
  }
}
