import 'dart:io';

import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final String token;
  final Dio dioReference;

  TokenInterceptor(this.token, this.dioReference);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    options.headers
        .putIfAbsent(HttpHeaders.authorizationHeader, () => "Bearer $token");
    return handler.next(options);
  }
}