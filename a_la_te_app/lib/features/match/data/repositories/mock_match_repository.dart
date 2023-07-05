import 'package:a_la_te_app/features/club/domain/model/club.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/models/match_set/match_set.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
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
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
        ),
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
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
        ),
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
        club: const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_molina.jpg',
        ),
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
        club: const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_molina.jpg',
        ),
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
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
        ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '0',
              clubAddress:
                  'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
              clubName: 'Polideportivo Las Torres',
              clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
            ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '1',
              clubAddress:
                  'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
              clubName: 'Polideportivo Molina de Segura',
              clubImage: 'assets/images/clubs/tenis_molina.jpg',
            ),
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
            club: const Club(
              id: '0',
              clubAddress:
                  'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
              clubName: 'Polideportivo Las Torres',
              clubImage: 'assets/images/clubs/tenis_las_torres.jpg',
            ),
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
    required Club club,
    required DateTime matchDate,
    required TimeOfDay initialTime,
    required TimeOfDay finalTime,
    required User user,
  }) async {
    try {
      final match = MatchModel(
        id: '20',
        matchStatus: MatchStatus.matchCreated,
        firstPlayerId: user.id,
        firstPlayerLevel: int.parse(user.level),
        firstPlayerName: user.name,
        firstPlayerPhoto: user.userPhoto,
        club: club,
        matchDate: matchDate,
        initialHour: initialTime.hour * 60 * 60,
        finalHour: finalTime.hour * 60 * 60,
      );
      return Success(match);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<MatchModel, Exception>> setSecondPlayer({
    required MatchModel match,
    required Player player,
  }) async {
    try {
      return Success(
        match.copyWith(
          secondPlayerId: player.id,
          secondPlayerLevel: int.parse(player.level),
          secondPlayerName: player.name,
          secondPlayerPhoto: player.playerPhoto,
        ),
      );
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<MatchModel, Exception>> setMatchResult({
    required MatchModel match,
    required List<MatchSet> matchResult,
    required bool isPlayer1Winner,
  }) async {
    try {
      return Success(
        match.copyWith(
          matchResult: matchResult,
          matchStatus: MatchStatus.matchPlayed,
          winningPlayerId:
              isPlayer1Winner ? match.firstPlayerId : match.secondPlayerId,
        ),
      );
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
