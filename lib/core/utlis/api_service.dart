import 'package:dio/dio.dart';

class ApiService{

  final String _basurl ='https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endpoint})async{
    var respons = await _dio.get('$_basurl$endpoint');
    return respons.data;
  }
}