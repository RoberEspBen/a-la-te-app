import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockUserRepository extends UserRepository {
  MockUserRepository();

  @override
  Future<Result<User, Exception>> getLoggedUser() async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return const Success(
      User(
        id: 2,
        nif: '40404040V',
        email: 'robe@gmail.com',
        name: 'Roberto Espinosa',
        description:
            'Llevo 10 años jugando regularmente y estoy deseando encontrar rivales a mi altura!',
        mobilePhoneNumber: '667668669',
        level: '2',
        skillfullHand: 'Izquierda',
        wonMatches: 20,
        playedMatches: 27,
      ),
    );
  }

  @override
  Future<Result<User, Exception>> getUserById({required int id}) async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return Success(
      User(
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
