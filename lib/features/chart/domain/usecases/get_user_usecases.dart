import 'package:crypto/core/error/error.dart';
import 'package:crypto/core/usecases/usescases.dart';
import 'package:crypto/features/chart/data/repositories/user_repository.dart';
import 'package:crypto/features/chart/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

class GetUserUsecase implements UseCase<User, String> {
  final UserRepository userRepository;

  GetUserUsecase({required this.userRepository});

  @override
  Future<Either<Failure, User>> call(String userId) async {
    return await userRepository.getUser(userId);
  }
}
