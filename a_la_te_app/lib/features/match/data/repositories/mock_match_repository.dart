import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockMatchRepository implements MatchRepository {
  @override
  Future<Result<List<MatchModel>, Exception>> getMatches() async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return Success([
      MatchModel(
        id: '4',
        firstPlayerId: 1,
        firstPlayerName: 'Juan Pérez',
        firstPlayerLevel: 2,
        clubName: 'Polideportivo Las Torres',
        clubAddress:
            'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
        matchDate: DateTime(
          2023,
          5,
          10,
        ),
        initialHour: 68400,
        finalHour: 75600,
      ),
      MatchModel(
        id: '5',
        firstPlayerId: 2,
        firstPlayerName: 'Roberto Espinosa',
        firstPlayerLevel: 2,
        clubName: 'Polideportivo Las Torres',
        clubAddress:
            'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
        matchDate: DateTime(
          2023,
          5,
          11,
        ),
        initialHour: 66600,
        finalHour: 73800,
      ),
    ]);
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserId({
    required int id,
  }) async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return Success([
      MatchModel(
        id: '1',
        firstPlayerId: 1,
        firstPlayerName: 'Juan Pérez',
        firstPlayerLevel: 2,
        secondPlayerId: 3,
        secondPlayerName: 'Paco Pons',
        secondPlayerLevel: 3,
        clubName: 'Polideportivo Molina de Segura',
        clubAddress:
            'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
        matchDate: DateTime(
          2023,
          4,
          10,
        ),
        initialHour: 68400,
        finalHour: 75600,
        matchResult: [
          const MatchSet(
            firstPlayerGames: 2,
            secondPlayerGames: 6,
          ),
          const MatchSet(
            firstPlayerGames: 0,
            secondPlayerGames: 6,
          ),
        ],
      ),
      MatchModel(
        id: '2',
        firstPlayerId: 2,
        firstPlayerName: 'Roberto Espinosa',
        firstPlayerLevel: 2,
        secondPlayerId: 1,
        secondPlayerName: 'Juan Pérez',
        secondPlayerLevel: 2,
        clubName: 'Polideportivo Molina de Segura',
        clubAddress:
            'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
        matchDate: DateTime(
          2023,
          4,
          12,
        ),
        initialHour: 68400,
        finalHour: 75600,
        matchResult: [
          const MatchSet(
            firstPlayerGames: 4,
            secondPlayerGames: 6,
          ),
          const MatchSet(
            firstPlayerGames: 4,
            secondPlayerGames: 3,
          ),
        ],
      ),
      MatchModel(
        id: '2',
        firstPlayerId: 3,
        firstPlayerName: 'Paco Pons',
        firstPlayerLevel: 3,
        secondPlayerId: 1,
        secondPlayerName: 'Juan Pérez',
        secondPlayerLevel: 2,
        clubName: 'Polideportivo Las Torres',
        clubAddress:
            'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
        matchDate: DateTime(
          2023,
          4,
          12,
        ),
        initialHour: 68400,
        finalHour: 75600,
        matchResult: [
          const MatchSet(
            firstPlayerGames: 7,
            secondPlayerGames: 6,
          ),
          const MatchSet(
            firstPlayerGames: 6,
            secondPlayerGames: 3,
          ),
        ],
      ),
    ]);
  }
}
