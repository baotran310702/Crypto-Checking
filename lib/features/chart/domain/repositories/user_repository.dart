import 'package:crypto/core/constants.dart';
import 'package:crypto/core/error/error.dart';
import 'package:crypto/features/chart/data/data_sources/user_data_remote.dart';
import 'package:crypto/features/chart/data/data_sources/user_data_sources.dart';
import 'package:crypto/features/chart/data/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/user.dart';

class UserRepositoryImpl implements UserRepository {
  final LocalUserDataSource localDataSource;
  final RemoteUserDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, User>> getUser(String userId) {
    // Example implementation
    try {
      final user =
          User(id: "1 ", name: "John Doe", email: "john.doe@example.com");
      return Future.value(Right(user));
    } catch (e) {
      return Future.value(Left(Failure(
          code: CodeErrorMessage.errorFetchingUser,
          message: "Error fetching user")));
    }
  }
}
