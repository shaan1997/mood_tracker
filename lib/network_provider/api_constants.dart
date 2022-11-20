import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

const baseUrl = 'http://143.110.252.72/api/v1/';

String tag = 'api_provider';

const String strRegister = 'register';

handleException(error, stacktrace, DioError dioError) {
  debugPrint("Exception occurred: $error stackTrace: $stacktrace");

  if (_checkSocketException(error)) {
    throwIfNoSuccess("No internet connection");
  }else{
    if (dioError.response!.statusCode == 401) {
      throwIfNoSuccess("Unauthorize");
    } else if (dioError.response!.statusCode == 500) {
      if (dioError.response!.data == null) {
        throwIfNoSuccess("Server error");
      } else {
        throwIfNoSuccess(dioError.response!.data['message']);
      }
    } else{
      if (dioError.response!.data == null) {
        throwIfNoSuccess("Something went wrong");
      } else {
        throwIfNoSuccess(dioError.response!.data['message']);
      }
    }
  }

}

bool _checkSocketException(DioError err) {
  return err.type == DioErrorType.other && err.error != null && err.error is SocketException;
}

void throwIfNoSuccess(String response) {
  throw HttpException(response);
}