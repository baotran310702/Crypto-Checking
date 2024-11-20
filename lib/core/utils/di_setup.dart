import 'package:crypto/features/feature_one/data/data_sources/user_data_remote.dart';
import 'package:crypto/features/feature_one/data/data_sources/user_data_sources.dart';
import 'package:crypto/features/feature_one/data/repositories/user_repository.dart';
import 'package:crypto/features/feature_one/domain/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Data sources
  sl.registerLazySingleton<LocalUserDataSource>(
    () => LocalUserDataSource(),
  );

  sl.registerLazySingleton<RemoteUserDataSource>(
    () => RemoteUserDataSource(Dio()),
  );

  // Repositories
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      localDataSource: sl<LocalUserDataSource>(),
      remoteDataSource: sl<RemoteUserDataSource>(),
    ),
  );
}
