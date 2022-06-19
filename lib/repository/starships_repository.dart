import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class StarshipsRepository extends BaseRepository {
  Future getAllStarships() async {
    final response = await doGet(
      'starships/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getStarshipById(int starshipId) async {
    final response = await doGet(
      'starships/$starshipId/',
    );
    return response?.data;
  }
}
