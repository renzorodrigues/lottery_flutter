import 'package:dio/dio.dart';

class CustomDio {

  Dio _dio;

  CustomDio() {
    this._dio = Dio();
  }

  Dio get dioInstance => this._dio;

}