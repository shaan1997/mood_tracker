import 'package:dio/dio.dart';

import '../DioLogger.dart';
import '../model/emoji_model.dart';
import 'api_constants.dart';

class ApiProvider{
  Dio _dio = Dio();
  DioError? _dioError;

  ApiProvider.base() {
    BaseOptions dioOptions = BaseOptions()
      ..baseUrl = baseUrl;
    _dio = Dio(dioOptions);
    _dio.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
          options.headers = {'Content-Type': 'application/json','Authorization':'c3fb04334a7c647338cdfd500e2997bb9898cf52'};
          DioLogger.onSend(tag, options);
          return handler.next(options);
        }, onResponse: (Response response, handler) {
          DioLogger.onSuccess(tag, response);
          return handler.next(response);
        }, onError: (DioError error, handler) {
          _dioError = error;
          DioLogger.onError(tag, error);
          return handler.next(error);
        }));
  }

  Future getMoodData(params) async {
    try {
      Response response = await _dio.get(customerJoshReasonToday, queryParameters: params);
      return EmojiModel.fromJson(response.data);
    } catch (error, stacktrace) {
      handleException(error, stacktrace, _dioError!);
    }
  }
}