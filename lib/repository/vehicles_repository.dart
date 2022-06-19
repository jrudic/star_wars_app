import 'package:starwars_fan_app/model/base_response.dart';
import 'package:starwars_fan_app/repository/base_repository.dart';

class VehiclesRepository extends BaseRepository {
  Future getAllVehicles() async {
    final response = await doGet(
      'vehicles/',
    );
    return BaseResponse.fromJson(response?.data).results;
  }

  Future getVehicleById(int vehicleId) async {
    final response = await doGet(
      'vehicles/$vehicleId/',
    );
    return response?.data;
  }
}
