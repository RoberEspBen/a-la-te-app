import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiPlayerRepository extends PlayerRepository {
  ApiPlayerRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<Player, Exception>> getPlayerById({required int id}) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.playerById,
        queryParameters: {
          'PlayerId': id,
        },
      );

      final result = Player(id: id);

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
