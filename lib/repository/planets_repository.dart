import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class PlanetsRepository extends BaseRepository {
  Future getAllPlanets() async {
    final response = await doGet(
      'planets/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getPlanetById(int planetId) async {
    final response = await doGet(
      'planets/$planetId/',
    );
    return response?.data;
  }
}
