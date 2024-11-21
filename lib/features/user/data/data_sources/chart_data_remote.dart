import 'package:crypto/core/error/error.dart';
import 'package:crypto/features/user/domain/entities/chart.dart';
import 'package:dartz/dartz.dart';

class ChartDataRemote {
  Future<Either<Failure, Chart>> getChart(String chartId) {
    return Future.value(Right(Chart.empty()));
  }
}
