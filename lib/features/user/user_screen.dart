import 'package:crypto/core/utils/di_setup.dart';
import 'package:crypto/features/user/data/repositories/chart.dart';
import 'package:crypto/features/user/domain/usecases/get_chart_usescases.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final getChartUseCase =
        GetChartUsecase(chartRepository: sl<ChartRepository>());

    return Scaffold(
      appBar: AppBar(title: const Text("Chart Screen")),
      body: FutureBuilder(
        future: getChartUseCase.call("1"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final chart = (snapshot.data as Right).value;
            return Center(child: Text('Chart Symbol: ${chart.symbol}'));
          } else {
            return const Center(child: Text('Error loading chart'));
          }
        },
      ),
    );
  }
}
