import 'package:dio/dio.dart';

// ignore: camel_case_types
class apiservices {
  final String url = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  apiservices(this.dio);
  Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await dio.get("$url$endpoint ");
    return response.data;
  }
}
