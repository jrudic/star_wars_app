import 'package:dio/dio.dart';
import 'package:starwars_fan_app/shared/constants.dart';

class BaseRepository {
  Dio dio = Dio();

  Future<Response?> doGet(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get<dynamic>(
      StarWarsConstants.baseUrl + path,
      queryParameters: queryParameters,
    );
    return response;
  }
}
