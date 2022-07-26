import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/endpoints.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<Dio>(
    () => Dio()
      ..options = BaseOptions(
        baseUrl: Endpoints.prodBaseUrl,
        connectTimeout: 60000,
        receiveTimeout: 60000,
        responseType: ResponseType.json,
      )
      ..interceptors.addAll([
        if (kDebugMode)
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ),
      ]),
  );
}
