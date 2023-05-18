import 'package:a_la_te_app/core/network/dio_client.dart';
import 'package:a_la_te_app/core/network/network_service.dart';
import 'package:a_la_te_app/features/example/data/repositories/api_example_repository.dart';
import 'package:a_la_te_app/features/example/data/repositories/mock_example_repository.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_cubit.dart';
import 'package:a_la_te_app/features/match/data/repositories/api_match_repository.dart';
import 'package:a_la_te_app/features/match/data/repositories/mock_match_repository.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/data/api_user_repository.dart';
import 'package:a_la_te_app/features/player/data/mock_user_repository.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:a_la_te_app/features/user/data/api_user_repository.dart';
import 'package:a_la_te_app/features/user/data/mock_user_repository.dart';
import 'package:a_la_te_app/features/user/domain/repository/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
const useMocks = true;

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
    )
    ..registerLazySingleton<MatchRepository>(
      () => useMocks
          ? MockMatchRepository()
          : ApiMatchRepository(
              networkService: locator<NetworkService>(),
            ),
    )
    ..registerLazySingleton<UserRepository>(
      () => useMocks
          ? MockUserRepository()
          : ApiUserRepository(
              networkService: locator<NetworkService>(),
            ),
    )
    ..registerLazySingleton<PlayerRepository>(
      () => useMocks
          ? MockPlayerRepository()
          : ApiPlayerRepository(
              networkService: locator<NetworkService>(),
            ),
    );

  registerCubits();
}

void registerCubits() {
  locator
    ..registerLazySingleton<MatchCubit>(
      () => MatchCubit(
        matchRepository: locator<MatchRepository>(),
      ),
    )
    ..registerLazySingleton<UserCubit>(
      () => UserCubit(
        userRepository: locator<UserRepository>(),
        matchCubit: locator<MatchCubit>(),
      ),
    );
}
