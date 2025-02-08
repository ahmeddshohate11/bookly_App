import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioErrorType.unknown:
        return dioError.message?.contains('SocketException') == true
            ? ServerFailure('No Internet Connection')
            : ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Oops! There was an Error, Please try again');
    }
  }
  
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(response['error']['message']);
      case 404:
        return ServerFailure('Your request was not found, Please try later!');
      case 500:
        return ServerFailure('Internal Server error, Please try later');
      default:
        return ServerFailure('Oops! There was an Error, Please try again');
    }
  }
}
