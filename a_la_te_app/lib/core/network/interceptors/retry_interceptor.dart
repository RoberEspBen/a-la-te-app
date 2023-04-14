import 'dart:io';

import 'package:a_la_te_app/core/network/interceptors/dio_connectivity_request_retrier.dart';
import 'package:dio/dio.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  final DioConnectivityRequestRetrier requestRetrier;

  @override
  Future<dynamic> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_shouldRetry(err)) {
      try {
        final resultRetried =
            await requestRetrier.scheduleRequestRetry(err.requestOptions);
        handler.resolve(resultRetried);
      } catch (e) {
        return e;
      }
    }
    return err;
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.unknown &&
        err.error != null &&
        err.error is SocketException;
  }
}
