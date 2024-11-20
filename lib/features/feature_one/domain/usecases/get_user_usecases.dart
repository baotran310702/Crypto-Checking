import 'package:crypto/core/error/error.dart';
import 'package:crypto/core/usecases/usescases.dart';
import 'package:crypto/features/feature_one/data/repositories/user_repository.dart';
import 'package:crypto/features/feature_one/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

class GetUserUsecase implements UseCase<User, String> {
  final UserRepository userRepository;

  GetUserUsecase({required this.userRepository});

  @override
  Future<Either<Failure, User>> call(String userId) async {
    return await userRepository.getUser(userId);
  }
}
