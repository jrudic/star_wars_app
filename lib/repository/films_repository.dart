import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class FilmsRepository extends BaseRepository {
  Future getAllFilms() async {
    final response = await doGet(
      'films/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getFilmById(int filmId) async {
    final response = await doGet(
      'films/$filmId/',
    );
    return response?.data;
  }
}
