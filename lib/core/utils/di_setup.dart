import 'package:crypto/features/user/data/data_sources/chart_data_local.dart';
import 'package:crypto/features/user/data/data_sources/chart_data_remote.dart';
import 'package:crypto/features/user/data/repositories/chart.dart';
import 'package:crypto/features/user/domain/repositories/chart_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Data sources
  sl.registerLazySingleton<ChartDataLocal>(
    () => ChartDataLocal(),
  );

  sl.registerLazySingleton<ChartDataRemote>(
    () => ChartDataRemote(),
  );

  // Repositories
  sl.registerLazySingleton<ChartRepository>(
    () => ChartRepositoryImpl(
      chartDataLocal: sl<ChartDataLocal>(),
      chartDataRemote: sl<ChartDataRemote>(),
    ),
  );
}
