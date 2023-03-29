abstract class Failure {
  String errorMessage;
  Failure({
    required this.errorMessage,
  });
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
}
