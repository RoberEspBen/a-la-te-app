import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class MockUserRepository extends UserRepository {
  MockUserRepository();

  @override
  Future<Result<User, Exception>> getUser() async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );

    return const Success(
      User(
        id: 1,
        nif: '40404040V',
        email: 'pamema@gmail.com',
        name: 'Juan Pérez',
        description:
            'Llevo 10 años jugando regularmente y estoy deseando encontrar rivales a mi altura!',
        mobilePhoneNumber: '771772773',
        level: '2',
        skillfullHand: 'Izquierda',
        wonMatches: 1,
        playedMatches: 1,
      ),
    );
  }
}
