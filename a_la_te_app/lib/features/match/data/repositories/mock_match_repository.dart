import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:flutter/material.dart';
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
        winningPlayerId: 3,
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
            secondPlayerGames: 6,
          ),
        ],
        winningPlayerId: 1,
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
        winningPlayerId: 3,
      ),
    ]);
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserIdAndMatchStatus({
    required int id,
    required MatchStatus matchStatus,
  }) async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    switch (matchStatus) {
      case MatchStatus.matchCreated:
        return Success([
          MatchModel(
            id: '1',
            firstPlayerId: 2,
            firstPlayerName: 'Roberto Espinosa',
            firstPlayerLevel: 2,
            clubName: 'Polideportivo Molina de Segura',
            clubAddress:
                'Avenida de la Industria, SN, Molina de Segura, Murcia, España',
            matchDate: DateTime(
              2023,
              4,
              15,
            ),
            initialHour: 68400,
            finalHour: 75600,
          ),
        ]);
      case MatchStatus.scheduledMatch:
        return Success([
          MatchModel(
            id: '1',
            matchStatus: MatchStatus.scheduledMatch,
            firstPlayerId: 2,
            firstPlayerName: 'Roberto Espinosa',
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
          ),
        ]);
      case MatchStatus.matchPlayed:
        return Success([
          MatchModel(
            id: '1',
            matchStatus: MatchStatus.matchPlayed,
            firstPlayerId: 2,
            firstPlayerName: 'Roberto Espinosa',
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
            winningPlayerId: 3,
          ),
          MatchModel(
            id: '2',
            matchStatus: MatchStatus.matchPlayed,
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
                secondPlayerGames: 6,
              ),
            ],
            winningPlayerId: 1,
          ),
          MatchModel(
            id: '2',
            matchStatus: MatchStatus.matchPlayed,
            firstPlayerId: 3,
            firstPlayerName: 'Paco Pons',
            firstPlayerLevel: 3,
            secondPlayerId: 2,
            secondPlayerName: 'Roberto Espinosa',
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
                firstPlayerGames: 6,
                secondPlayerGames: 7,
              ),
              const MatchSet(
                firstPlayerGames: 3,
                secondPlayerGames: 6,
              ),
            ],
            winningPlayerId: 2,
          ),
          MatchModel(
            id: '1',
            matchStatus: MatchStatus.matchPlayed,
            firstPlayerId: 2,
            firstPlayerName: 'Roberto Espinosa',
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
                firstPlayerGames: 6,
                secondPlayerGames: 4,
              ),
              const MatchSet(
                firstPlayerGames: 6,
                secondPlayerGames: 2,
              ),
            ],
            winningPlayerId: 2,
          ),
          MatchModel(
            id: '2',
            matchStatus: MatchStatus.matchPlayed,
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
                firstPlayerGames: 6,
                secondPlayerGames: 4,
              ),
              const MatchSet(
                firstPlayerGames: 6,
                secondPlayerGames: 4,
              ),
            ],
            winningPlayerId: 2,
          ),
          MatchModel(
            id: '2',
            matchStatus: MatchStatus.matchPlayed,
            firstPlayerId: 3,
            firstPlayerName: 'Paco Pons',
            firstPlayerLevel: 3,
            secondPlayerId: 2,
            secondPlayerName: 'Roberto Espinosa',
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
                firstPlayerGames: 6,
                secondPlayerGames: 7,
              ),
              const MatchSet(
                firstPlayerGames: 3,
                secondPlayerGames: 6,
              ),
            ],
            winningPlayerId: 2,
          ),
        ]);
    }
  }

  @override
  Future<Result<MatchModel, Exception>> createMatch({
    required String clubName,
    required DateTime matchDate,
    required TimeOfDay initialTime,
    required TimeOfDay finalTime,
    required User user,
  }) async {
    try {
      print(user.name);
      final match = MatchModel(
        id: '20',
        matchStatus: MatchStatus.matchCreated,
        firstPlayerId: user.id,
        firstPlayerLevel: int.parse(user.level),
        firstPlayerName: user.name,
        firstPlayerPhoto: user.userPhoto,
        clubName: clubName,
        clubAddress:
            'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
        matchDate: matchDate,
        initialHour: initialTime.hour * 60 * 60,
        finalHour: finalTime.hour * 60 * 60,
        clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
      );
      return Success(match);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
