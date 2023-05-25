import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiMatchRepository extends MatchRepository {
  ApiMatchRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<List<MatchModel>, Exception>> getMatches() async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(Endpoints.matches);
      // ignore: avoid_dynamic_calls
      if (response.statusCode == 230) {
        return Error(
          Exception('Ha ocurrido un error'),
        );
      }

      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserId({
    required int id,
  }) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.matchesByUserId,
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

      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }

  @override
  Future<Result<List<MatchModel>, Exception>> getMatchesByUserIdAndMatchStatus({
    required int id,
    required MatchStatus matchStatus,
  }) async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(
        Endpoints.matchesByUserId,
        queryParameters: {
          'userId': id,
          'matchStatus': matchStatus,
        },
      );
      // ignore: avoid_dynamic_calls
      if (response.statusCode == 230) {
        return Error(
          Exception('Ha ocurrido un error'),
        );
      }

      final result = <MatchModel>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(MatchModel.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
