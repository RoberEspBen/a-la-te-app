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
      case 3:
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

      case 4:
        return const Success(
          Player(
            id: 4,
            nif: 'X1Y2Z3A4B',
            email: 'ana@example.com',
            name: 'Ana Martínez',
            description: 'Apasionada del tenis y en busca de nuevos desafíos',
            mobilePhoneNumber: '677776655',
            level: '3',
            skillfullHand: 'Izquierda',
            wonMatches: 15,
            playedMatches: 20,
          ),
        );
      case 5:
        return const Success(
          Player(
            id: 5,
            nif: '12345678Z',
            email: 'pedro@gmail.com',
            name: 'Pedro Sánchez',
            description: 'Principiante entusiasmado por mejorar su juego',
            mobilePhoneNumber: '666664444',
            level: '1',
            skillfullHand: 'Derecha',
            wonMatches: 2,
            playedMatches: 10,
          ),
        );
      case 6:
        return const Success(
          Player(
            id: 6,
            nif: 'B1A2D3C4E',
            email: 'maria@example.com',
            name: 'María López',
            description: 'Entusiasta del tenis en busca de compañeros de juego',
            mobilePhoneNumber: '677774444',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 5,
            playedMatches: 8,
          ),
        );
      case 7:
        return const Success(
          Player(
            id: 7,
            nif: 'C5B4A3D2E',
            email: 'carlos@example.com',
            name: 'Carlos González',
            description: 'Amante del tenis desde hace 5 años',
            mobilePhoneNumber: '677773333',
            level: '3',
            skillfullHand: 'Derecha',
            wonMatches: 8,
            playedMatches: 14,
          ),
        );

      case 8:
        return const Success(
          Player(
            id: 8,
            nif: 'Z9Y8X7W6V',
            email: 'laura@example.com',
            name: 'Laura Fernández',
            description: 'Jugadora de tenis amateur en busca de competición',
            mobilePhoneNumber: '677772222',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 3,
            playedMatches: 6,
          ),
        );

      case 9:
        return const Success(
          Player(
            id: 9,
            nif: 'A4B3C2D1E',
            email: 'jose@example.com',
            name: 'José Rodríguez',
            description: 'Me gusta el tenis y siempre estoy dispuesto a jugar',
            mobilePhoneNumber: '677771111',
            level: '1',
            skillfullHand: 'Derecha',
            wonMatches: 1,
            playedMatches: 3,
          ),
        );

      case 10:
        return const Success(
          Player(
            id: 10,
            nif: 'P9O8I7U6Y',
            email: 'luis@example.com',
            name: 'Luis Ramírez',
            description: 'Jugador aficionado de tenis',
            mobilePhoneNumber: '677770000',
            level: '1',
            skillfullHand: 'Izquierda',
            wonMatches: 0,
            playedMatches: 2,
          ),
        );
      case 11:
        return const Success(
          Player(
            id: 11,
            nif: 'M8N7B6V5C4X',
            email: 'raquel@example.com',
            name: 'Raquel García',
            description:
                'Entusiasta del tenis en busca de partidos emocionantes',
            mobilePhoneNumber: '677779999',
            level: '2',
            skillfullHand: 'Derecha',
            wonMatches: 6,
            playedMatches: 10,
          ),
        );

      case 12:
        return const Success(
          Player(
            id: 12,
            nif: 'T5R4E3W2Q1S',
            email: 'david@example.com',
            name: 'David Torres',
            description: 'Amante del tenis y jugador competitivo',
            mobilePhoneNumber: '677778888',
            level: '3',
            skillfullHand: 'Izquierda',
            wonMatches: 12,
            playedMatches: 18,
          ),
        );

      case 13:
        return const Success(
          Player(
            id: 13,
            nif: 'J7H6G5F4D3S',
            email: 'carla@example.com',
            name: 'Carla Gómez',
            description: 'Jugadora de tenis con mucha energía',
            mobilePhoneNumber: '677777777',
            level: '1',
            skillfullHand: 'Derecha',
            wonMatches: 3,
            playedMatches: 7,
          ),
        );

      case 14:
        return const Success(
          Player(
            id: 14,
            nif: 'P8O9I0U1Y2T',
            email: 'javier@example.com',
            name: 'Javier Ruiz',
            description: 'Jugador ocasional en busca de diversión en la pista',
            mobilePhoneNumber: '677776666',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 5,
            playedMatches: 9,
          ),
        );

      case 15:
        return const Success(
          Player(
            id: 15,
            nif: 'M0N1B2V3C4X',
            email: 'lucia@example.com',
            name: 'Lucía Martínez',
            description: 'Principiante apasionada por el tenis',
            mobilePhoneNumber: '677775555',
            level: '1',
            skillfullHand: 'Derecha',
            wonMatches: 1,
            playedMatches: 5,
          ),
        );

      case 16:
        return const Success(
          Player(
            id: 16,
            nif: 'R2E3W4Q5S6D7F',
            email: 'manuel@example.com',
            name: 'Manuel López',
            description: 'Jugador de tenis con gran experiencia',
            mobilePhoneNumber: '677774444',
            level: '3',
            skillfullHand: 'Izquierda',
            wonMatches: 20,
            playedMatches: 25,
          ),
        );
      case 17:
        return const Success(
          Player(
            id: 17,
            nif: 'H6G5F4D3S2A',
            email: 'alicia@example.com',
            name: 'Alicia Ramírez',
            description: 'Jugadora de tenis en busca de nuevos desafíos',
            mobilePhoneNumber: '677773333',
            level: '2',
            skillfullHand: 'Derecha',
            wonMatches: 7,
            playedMatches: 12,
          ),
        );

      case 18:
        return const Success(
          Player(
            id: 18,
            nif: 'K7L8P9O0I1U',
            email: 'miguel@example.com',
            name: 'Miguel Torres',
            description: 'Amante del tenis y jugador competitivo',
            mobilePhoneNumber: '677772222',
            level: '3',
            skillfullHand: 'Izquierda',
            wonMatches: 10,
            playedMatches: 15,
          ),
        );

      case 19:
        return const Success(
          Player(
            id: 19,
            nif: 'N2B3V4C5X6Z',
            email: 'mariana@example.com',
            name: 'Mariana López',
            description: 'Jugadora de tenis aficionada',
            mobilePhoneNumber: '677771111',
            level: '1',
            skillfullHand: 'Derecha',
            wonMatches: 2,
            playedMatches: 4,
          ),
        );

      case 20:
        return const Success(
          Player(
            id: 20,
            nif: 'F8D7S6A5G4H3J',
            email: 'carlos@example.com',
            name: 'Carlos Rodríguez',
            description: 'Jugador de tenis entusiasta',
            mobilePhoneNumber: '677770000',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 4,
            playedMatches: 7,
          ),
        );

      default:
        return const Success(
          Player(
            id: 0,
            nif: '00000000P',
            email: 'example@example.com',
            name: 'Ex Xample',
            description: 'Tenista de ejemplo',
            mobilePhoneNumber: '666777888',
            level: '2',
            skillfullHand: 'Izquierda',
            wonMatches: 4,
            playedMatches: 7,
          ),
        );
    }
  }
}
