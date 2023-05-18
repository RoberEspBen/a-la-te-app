import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiUserRepository extends UserRepository {
  ApiUserRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<User, Exception>> getLoggedUser() async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(Endpoints.loggedUser);
      // ignore: avoid_dynamic_calls
      if (response.statusCode == 230) {
        return Error(
          Exception('Ha ocurrido un error'),
        );
      }

      const result = User(id: 4);

      return const Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<User, Exception>> getUserById({required int id}) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.userById,
        queryParameters: {
          'userId': id,
        },
      );
      // ignore: avoid_dynamic_calls
      if (response.statusCode == 230) {
        return Error(
          Exception('Ha ocurrido un error'),
        );
      }

      final result = User(id: id);

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
