import 'package:dio/dio.dart';

import '../const/const.dart';

class Network {
  Dio dio = Dio();

  Network() {
    dio.options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
        headers: {"accept": "Application/json"});
  }
}
