import 'package:crypto/core/error/error.dart';
import 'package:crypto/features/user/data/data_sources/chart_data_local.dart';
import 'package:crypto/features/user/data/data_sources/chart_data_remote.dart';
import 'package:crypto/features/user/data/repositories/chart.dart';
import 'package:crypto/features/user/domain/entities/chart.dart';
import 'package:dartz/dartz.dart';

class ChartRepositoryImpl implements ChartRepository {
  final ChartDataRemote chartDataRemote;
  final ChartDataLocal chartDataLocal;

  ChartRepositoryImpl(
      {required this.chartDataRemote, required this.chartDataLocal});

  @override
  Future<Either<Failure, Chart>> getChart(String chartId) async {
    final result = await chartDataRemote.getChart(chartId);
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
