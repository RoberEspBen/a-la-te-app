import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/club/domain/repository/club_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiClubRepository extends ClubRepository {
  ApiClubRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<List<String>, Exception>> getClubs() async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(Endpoints.clubs);

      final result = <String>[];

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
