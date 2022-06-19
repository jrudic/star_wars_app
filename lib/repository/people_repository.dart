import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class PeopleRepository extends BaseRepository {
  Future getAllPeople() async {
    final response = await doGet(
      'people/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getCharacterById(int characterId) async {
    final response = await doGet(
      'people/$characterId/',
    );
    return response?.data;
  }
}
