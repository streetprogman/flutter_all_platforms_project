import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../services/auth_service.dart';

class ApiService extends GetxService {
  final AuthService authService = Get.find();
  static BaseOptions options = BaseOptions(
    baseUrl: "env!.baseUrl",
  );
  Dio _withAuth = Dio(options);
  Dio _withoutAuth = Dio(options);
  final box = GetStorage();

  @override
  void onInit() {
    _withAuth.interceptors.add(_localeInterceptor());
    _withAuth.interceptors.add(_authInterceptor());
    // _withAuth.interceptors.add(_loggerInterceptor());

    _withoutAuth.interceptors.add(_localeInterceptor());
    // _withoutAuth.interceptors.add(_loggerInterceptor());
    super.onInit();
  }

  Dio get withAuth {
    return _withAuth;
  }

  Dio get withoutAuth {
    return _withoutAuth;
  }

  Interceptor _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final firebaseToken = authService.getFirebaseToken();
        if (firebaseToken != null)
          options.headers.addAll({
            "firebase-token": '$firebaseToken',
          });

        final wallkitToken = authService.getWallkitToken();
        if (wallkitToken != null)
          options.headers.addAll({
            "wallkit-token": '$wallkitToken',
          });

        return handler.next(options); //continue
      },
    );
  }

  Interceptor _localeInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers.addAll({
          "locale": Get.locale!.languageCode,
        });

        return handler.next(options); //continue
      },
    );
  }

  Interceptor _loggerInterceptor() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    );
  }
}
