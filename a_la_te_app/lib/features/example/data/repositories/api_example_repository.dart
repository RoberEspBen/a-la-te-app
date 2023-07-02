import 'package:a_la_te_app/core/network/endpoints.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class ApiExampleRepository extends ExampleRepository {
  ApiExampleRepository({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Result<List<Example>, Exception>> getExamples() async {
    try {
      // ignore: avoid_dynamic_calls
      final response = await networkService.get(Endpoints.examples);

      final result = <Example>[];

      // ignore: avoid_dynamic_calls
      for (final element in response.data['data'] as List) {
        result.add(Example.fromJson(element as Map<String, Object?>));
      }

      return Success(result);
    } catch (e) {
      return Error(Exception(e));
    }
  }
}
