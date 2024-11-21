import 'package:crypto/core/error/error.dart';
import 'package:crypto/features/chart/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(String userId);
}