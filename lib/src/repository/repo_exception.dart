import 'package:dio/dio.dart';

sealed class RepoException implements Exception {}

class UnknownRepoException extends RepoException {
  final DioException? apiException;

  UnknownRepoException({this.apiException});

  UnknownRepoException.maybeWithDioException(Object maybeDioException)
      : apiException = switch (maybeDioException) { DioException() => maybeDioException, _ => null };
}
