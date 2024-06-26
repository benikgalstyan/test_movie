import 'package:dio/dio.dart';
import 'package:test_movie/core/typedefs.dart';
import 'package:test_movie/data/service/network_service/network_service.dart';

class DioNetworkServiceImpl implements NetworkService {
  DioNetworkServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<Response<T>> delete<T>(
    String url, {
    required HeaderMap headers,
  }) =>
      _dio.delete<T>(
        url,
        options: Options(headers: headers),
      );

  @override
  Future<Response<T>> get<T>(
    String url, {
    required HeaderMap headers,
  }) =>
      _dio.get<T>(
        url,
        options: Options(headers: headers),
      );

  @override
  Future<Response<T>> post<T>(
    String url, {
    required HeaderMap headers,
    required JsonMap body,
  }) =>
      _dio.post<T>(
        url,
        data: body,
        options: Options(headers: headers),
      );

  @override
  Future<Response<T>> put<T>(
    String url, {
    required HeaderMap headers,
    required JsonMap body,
  }) =>
      _dio.put<T>(
        url,
        data: body,
        options: Options(headers: headers),
      );
}
