import 'package:dio/dio.dart';

 class ApiService {
  final String _baseUrl="https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiService( Dio dio) : _dio = dio;
  
  Future<Map<String, dynamic>>get( {
    required String endpoint,
    // Map<String, dynamic>? queryParameters,
  })async{
   final response = await _dio.get("$_baseUrl$endpoint");
   return response.data;

  }
}