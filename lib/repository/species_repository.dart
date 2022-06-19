import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class SpeciesRepository extends BaseRepository {
  Future getAllSpecies() async {
    final response = await doGet(
      'species/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getSpeciesById(int speciesId) async {
    final response = await doGet(
      'species/$speciesId/',
    );
    return response?.data;
  }
}
