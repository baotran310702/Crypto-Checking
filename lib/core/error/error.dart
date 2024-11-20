class Failure {
  final String code;
  final String message;

  Failure({required this.code, required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.code, required super.message});
}

class CacheFailure extends Failure {
  CacheFailure({required super.code, required super.message});
}

class NetworkFailure extends Failure {
  NetworkFailure({required super.code, required super.message});
}
