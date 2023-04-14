import 'package:a_la_te_app/core/network/dio_client.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/example/data/repositories/api_example_repository.dart';
import 'package:a_la_te_app/features/example/data/repositories/mock_example_repository.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
const useMocks = false;

Future<void> serviceLocatorSetUp() async {
  locator
    ..registerLazySingleton(Dio.new)
    ..registerLazySingleton<NetworkService>(
      () => DioClient(locator<Dio>()),
    )
    ..registerLazySingleton<ExampleRepository>(
      () => useMocks
          ? MockExampleRepository()
          : ApiExampleRepository(
              networkService: locator<NetworkService>(),
            ),
    );
}
