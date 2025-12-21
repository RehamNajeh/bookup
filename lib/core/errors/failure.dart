import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return ServerFailure("Connection Timeout with Server");
        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(
            dioError.response!.statusCode!,
            dioError.response!.data,
          );
        case DioExceptionType.cancel:
          return ServerFailure("Request to server was cancelled");
        case DioExceptionType.connectionError:
          return ServerFailure(
            "Connection to server failed due to internet connection",
          );
        case DioExceptionType.badCertificate:
          return ServerFailure("Bad Certificate");
        case DioExceptionType.unknown:
          return ServerFailure("Unexpected error occurred");
          
        default:
        if(dioError.message!.contains( 'SocketException')){
          return ServerFailure("No Internet Connection");
        }
          return ServerFailure("Something went wrong");
      }
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server error, Please try later!");
    } else {
      return ServerFailure("Something went wrong, Please try later!");
    }
  }
}
