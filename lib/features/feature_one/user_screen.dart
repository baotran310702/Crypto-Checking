import 'package:crypto/core/utils/di_setup.dart';
import 'package:crypto/features/feature_one/data/repositories/user_repository.dart';
import 'package:crypto/features/feature_one/domain/usecases/get_user_usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final getUserUseCase = GetUserUsecase(userRepository: sl<UserRepository>());

    return Scaffold(
      appBar: AppBar(title: const Text("User Screen")),
      body: FutureBuilder(
        future: getUserUseCase.call("1"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final user = (snapshot.data as Right).value;
            return Center(child: Text('Hello, ${user.name}'));
          } else {
            return const Center(child: Text('Error loading user'));
          }
        },
      ),
    );
  }
}
