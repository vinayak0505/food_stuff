import 'package:dio/adapter.dart';
import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// const token = "64c5e1aa89104e91933a83f22489ea51";
const token = "7c1ab1867bac4b92967bf573f6d23534";
// const token = "b40791fe8531482c8fb53873b69f1dda";
const key = "apiKey";
const apiBaseUrl = "https://api.spoonacular.com";

final dioProvider = Provider((_) => DioClient.getInstance());


class DioClient with DioMixin implements Dio {
  final String tag = "API CALL : ";

  DioClient._() {
    options = BaseOptions(
      baseUrl: apiBaseUrl,
      contentType: 'application/json',
      queryParameters: {key: token},
    );
    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    if (kIsWeb) {
      httpClientAdapter = BrowserHttpClientAdapter();
    } else {
      httpClientAdapter = DefaultHttpClientAdapter();
    }
  }
  

  Future<Response> getApi(
    String endUrl, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (get(
        endUrl,
        queryParameters: params,
        options: options,
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> postApi(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (post(
        endUrl,
        data: data,
        queryParameters: params,
        options: options,
      ));
    } on DioError {
      rethrow;
    }
  }

  static Dio getInstance() => DioClient._();
}
