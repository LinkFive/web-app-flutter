import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/provider/token_provider.dart';
import 'package:linkfive_flutter_web/src/repository/http/token_interceptor.dart';

const String hostUrl = String.fromEnvironment("HOST_URL", defaultValue: 'https://api.linkfive.io');

final dioProvider = Provider<Dio>((ref){
  final token = ref.watch(tokenProvider);
  final Dio dio = Dio();
  dio.options.baseUrl = hostUrl;
  dio.options.contentType = Headers.jsonContentType;
  dio.options.responseType = ResponseType.json;

  ref.onDispose(dio.close);

  return dio
    ..interceptors.addAll([
      TokenInterceptor(token, dio),
    ]);
}, name: 'Dio');