import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.formDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate ');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!,dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet');
      case DioExceptionType.unknown:
        return ServerFailure('Oops there was an error ,please try again');
    }
  }

  factory ServerFailure.fromResponse(int stateCode, dynamic response) {
    if (stateCode == 400 || stateCode == 401 || stateCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (stateCode == 404) {
      return ServerFailure('Your request not found , please try later');
    } else if (stateCode == 500) {
      return ServerFailure('Internet Server error , please try later');
    } else {
     return ServerFailure('Oops there was an error ,please try again');
    }
  }
}
