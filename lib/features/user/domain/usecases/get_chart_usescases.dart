import 'package:crypto/core/error/error.dart';
import 'package:crypto/core/usecases/usescases.dart';
import 'package:crypto/features/user/data/repositories/chart.dart';
import 'package:crypto/features/user/domain/entities/chart.dart';

import 'package:dartz/dartz.dart';

class GetChartUsecase implements UseCase<Chart, String> {
  final ChartRepository chartRepository;

  GetChartUsecase({required this.chartRepository});

  @override
  Future<Either<Failure, Chart>> call(String chartId) async {
    return await chartRepository.getChart(chartId);
  }
}
