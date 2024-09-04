abstract class Failure {
  final String message;

  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
        return ServerFailure('Bad Request: $response');
      case 401:
        return ServerFailure('Unauthorized: $response');
      case 404:
        return ServerFailure('Not Found: $response');
      case 500:
        return ServerFailure('Internal Server Error: $response');
      default:
        return ServerFailure('Unexpected Error: $response');
    }
  }
}
