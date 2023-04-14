import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class DioConnectivityRequestRetrier {
  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  final Dio dio;
  final Connectivity connectivity;

  Future<Response<dynamic>> scheduleRequestRetry(
    RequestOptions requestOptions,
  ) async {
    StreamSubscription<dynamic>? streamSubscription;
    final responseCompleter = Completer<Response<dynamic>>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (result) async {
        if (result != ConnectivityResult.none) {
          await streamSubscription!.cancel();
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
            ),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
