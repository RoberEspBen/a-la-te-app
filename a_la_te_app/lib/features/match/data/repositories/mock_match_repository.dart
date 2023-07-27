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
        id: '1',
        firstPlayerId: 1,
        firstPlayerName: 'Juan Pérez',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 8, 10),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '2',
        firstPlayerId: 3,
        firstPlayerName: 'Paco Pons',
        firstPlayerLevel: 3,
        matchDate: DateTime(2023, 8, 12),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_4.jpg',
        ),
      ),
      MatchModel(
        id: '3',
        firstPlayerId: 5,
        firstPlayerName: 'Pedro Sánchez',
        firstPlayerLevel: 1,
        matchDate: DateTime(2023, 8, 15),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '4',
        firstPlayerId: 7,
        firstPlayerName: 'Carlos González',
        firstPlayerLevel: 3,
        matchDate: DateTime(2023, 8, 18),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '5',
        firstPlayerId: 9,
        firstPlayerName: 'José Rodríguez',
        firstPlayerLevel: 1,
        matchDate: DateTime(2023, 8, 20),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '4',
          clubAddress: 'Avenida de los Deportes, 5, Lorca, Murcia, España',
          clubName: 'Club de Tenis Lorca',
          clubImage: 'assets/images/clubs/tenis_3.jpg',
        ),
      ),
      MatchModel(
        id: '6',
        firstPlayerId: 11,
        firstPlayerName: 'Raquel García',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 8, 22),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '11',
        firstPlayerId: 16,
        firstPlayerName: 'Manuel López',
        firstPlayerLevel: 3,
        matchDate: DateTime(2023, 9, 20),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '5',
          clubAddress: 'Calle del Tenis, 8, Molina de Segura, Murcia, España',
          clubName: 'Club de Tenis Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_5.jpg',
        ),
      ),
      MatchModel(
        id: '12',
        firstPlayerId: 18,
        firstPlayerName: 'Miguel Torres',
        firstPlayerLevel: 3,
        matchDate: DateTime(2023, 9, 25),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '2',
          clubAddress: 'Calle de Murcia, 15, Murcia, España',
          clubName: 'Club de Tenis Murcia',
          clubImage: 'assets/images/clubs/tenis_6.jpg',
        ),
      ),
      MatchModel(
        id: '13',
        firstPlayerId: 19,
        firstPlayerName: 'Mariana López',
        firstPlayerLevel: 1,
        matchDate: DateTime(2023, 9, 30),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '2',
          clubAddress: 'Calle de Murcia, 15, Murcia, España',
          clubName: 'Club de Tenis Murcia',
          clubImage: 'assets/images/clubs/tenis_6.jpg',
        ),
      ),
      MatchModel(
        id: '14',
        firstPlayerId: 8,
        firstPlayerName: 'Laura Fernández',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 10, 3),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '15',
        firstPlayerId: 10,
        firstPlayerName: 'Luis Ramírez',
        firstPlayerLevel: 1,
        matchDate: DateTime(2023, 10, 8),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '1',
          clubAddress:
              'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
          clubName: 'Polideportivo Molina de Segura',
          clubImage: 'assets/images/clubs/tenis_4.jpg',
        ),
      ),
      MatchModel(
        id: '16',
        firstPlayerId: 12,
        firstPlayerName: 'David Torres',
        firstPlayerLevel: 3,
        matchDate: DateTime(2023, 10, 12),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '9',
          clubAddress:
              'Calle de la Raqueta, 12, Molina de Segura, Murcia, España',
          clubName: 'Club de Tenis Raqueta Molina',
          clubImage: 'assets/images/clubs/tenis_7.jpg',
        ),
      ),
      MatchModel(
        id: '17',
        firstPlayerId: 14,
        firstPlayerName: 'Javier Ruiz',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 10, 16),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '0',
          clubAddress:
              'C/ Miguel Induráin, SN, Las Torres de Cotillas, Murcia, España',
          clubName: 'Polideportivo Las Torres',
          clubImage: 'assets/images/clubs/tenis_1.jpg',
        ),
      ),
      MatchModel(
        id: '18',
        firstPlayerId: 15,
        firstPlayerName: 'Lucía Martínez',
        firstPlayerLevel: 1,
        matchDate: DateTime(2023, 10, 20),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '3',
          clubAddress: 'Calle del Deporte, 10, Cartagena, Murcia, España',
          clubName: 'Club de Tenis Cartagena',
          clubImage: 'assets/images/clubs/tenis_2.jpg',
        ),
      ),
      MatchModel(
        id: '19',
        firstPlayerId: 17,
        firstPlayerName: 'Alicia Ramírez',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 10, 25),
        initialHour: 68400,
        finalHour: 75600,
        club: const Club(
          id: '4',
          clubAddress: 'Avenida de los Deportes, 5, Lorca, Murcia, España',
          clubName: 'Club de Tenis Lorca',
          clubImage: 'assets/images/clubs/tenis_3.jpg',
        ),
      ),
      MatchModel(
        id: '20',
        firstPlayerId: 20,
        firstPlayerName: 'Carlos Rodríguez',
        firstPlayerLevel: 2,
        matchDate: DateTime(2023, 10, 29),
        initialHour: 72000,
        finalHour: 79200,
        club: const Club(
          id: '6',
          clubAddress: 'Calle del Deporte, 25, San Javier, Murcia, España',
          clubName: 'Club de Tenis San Javier',
          clubImage: 'assets/images/clubs/tenis_8.jpg',
        ),
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
          clubImage: 'assets/images/clubs/tenis_4.jpg',
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
          clubImage: 'assets/images/clubs/tenis_4.jpg',
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
          clubImage: 'assets/images/clubs/tenis_1.jpg',
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
              id: '6',
              clubAddress: 'Calle del Deporte, 25, San Javier, Murcia, España',
              clubName: 'Club de Tenis San Javier',
              clubImage: 'assets/images/clubs/tenis_8.jpg',
            ),
            matchDate: DateTime(
              2023,
              7,
              28,
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
              clubImage: 'assets/images/clubs/tenis_4.jpg',
            ),
            matchDate: DateTime(
              2023,
              6,
              10,
            ),
            initialHour: 68400,
            finalHour: 75600,
          ),
        ]);
      case MatchStatus.matchPlayed:
        switch (id) {
          case 1:
            return Success([
              MatchModel(
                id: '1',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 0, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '2',
                matchStatus: MatchStatus.matchPlayed,
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
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '3',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 4,
                secondPlayerName: 'Ana Martínez',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 3, secondPlayerGames: 6),
                ],
                winningPlayerId: 4,
              ),
              MatchModel(
                id: '4',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 5,
                secondPlayerName: 'María Gómez',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '5',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 6,
                secondPlayerName: 'Carlos Rodríguez',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '6',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 7,
                secondPlayerName: 'Laura Torres',
                secondPlayerLevel: 4,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                ],
                winningPlayerId: 7,
              ),
              MatchModel(
                id: '7',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 8,
                secondPlayerName: 'Carmen López',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '8',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 9,
                secondPlayerName: 'Sergio González',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '9',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 10,
                secondPlayerName: 'Andrés Sánchez',
                secondPlayerLevel: 4,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '10',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 11,
                secondPlayerName: 'Laura Rodríguez',
                secondPlayerLevel: 4,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                ],
                winningPlayerId: 11,
              ),
              MatchModel(
                id: '11',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 12,
                secondPlayerName: 'Pedro Gómez',
                secondPlayerLevel: 4,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '12',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 1,
                firstPlayerName: 'Juan Pérez',
                firstPlayerLevel: 2,
                secondPlayerId: 13,
                secondPlayerName: 'María López',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                ],
                winningPlayerId: 1,
              ),
            ]);
          case 3:
            return Success([
              MatchModel(
                id: '13',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 3,
                firstPlayerName: 'Paco Pons',
                firstPlayerLevel: 3,
                secondPlayerId: 5,
                secondPlayerName: 'Pedro Sánchez',
                secondPlayerLevel: 1,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                ],
                winningPlayerId: 3,
              ),
              MatchModel(
                id: '14',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 3,
                firstPlayerName: 'Paco Pons',
                firstPlayerLevel: 3,
                secondPlayerId: 11,
                secondPlayerName: 'Raquel García',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 11,
              ),
              MatchModel(
                id: '15',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 3,
                firstPlayerName: 'Paco Pons',
                firstPlayerLevel: 3,
                secondPlayerId: 18,
                secondPlayerName: 'Miguel Torres',
                secondPlayerLevel: 3,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                  const MatchSet(firstPlayerGames: 7, secondPlayerGames: 5),
                ],
                winningPlayerId: 3,
              ),
              MatchModel(
                id: '16',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 3,
                firstPlayerName: 'Paco Pons',
                firstPlayerLevel: 3,
                secondPlayerId: 12,
                secondPlayerName: 'Laura Martínez',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 12,
              ),
            ]);
          case 5:
            return Success([
              MatchModel(
                id: '17',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 1,
                secondPlayerName: 'Juan Pérez',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 4),
                ],
                winningPlayerId: 5,
              ),
              MatchModel(
                id: '18',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '19',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 3,
                secondPlayerName: 'Paco Pons',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 3),
                  const MatchSet(firstPlayerGames: 6, secondPlayerGames: 2),
                ],
                winningPlayerId: 5,
              ),
              MatchModel(
                id: '20',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 1,
                secondPlayerName: 'Juan Pérez',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 3, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 1,
              ),
              MatchModel(
                id: '21',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '22',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '23',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '24',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '25',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
              MatchModel(
                id: '26',
                matchStatus: MatchStatus.matchPlayed,
                firstPlayerId: 5,
                firstPlayerName: 'Pedro Sánchez',
                firstPlayerLevel: 1,
                secondPlayerId: 2,
                secondPlayerName: 'Roberto Espinosa',
                secondPlayerLevel: 2,
                club: const Club(
                  id: '1',
                  clubAddress:
                      'Avenida de La Industria, SN, Molina de Segura, Murcia, España',
                  clubName: 'Polideportivo Molina de Segura',
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
                ),
                matchDate: DateTime(2023, 4, 10),
                initialHour: 68400,
                finalHour: 75600,
                matchResult: [
                  const MatchSet(firstPlayerGames: 2, secondPlayerGames: 6),
                  const MatchSet(firstPlayerGames: 4, secondPlayerGames: 6),
                ],
                winningPlayerId: 2,
              ),
            ]);
          default:
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
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
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
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
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
                  clubImage: 'assets/images/clubs/tenis_1.jpg',
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
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
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
                  clubImage: 'assets/images/clubs/tenis_4.jpg',
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
                  clubImage: 'assets/images/clubs/tenis_1.jpg',
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
