import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/model/filter_model.dart';

class ResourcesHelper {
  //Return name of type
  String getTypeName(Type type) {
    switch (type) {
      case Type.vehicles:
        return 'Vehicles';
      case Type.starships:
        return 'Starships';
      case Type.species:
        return 'Species';
      case Type.planet:
        return 'Planet';
      case Type.film:
        return 'Film';
      case Type.people:
        return 'People';
    }
  }

  List<FilterModel> getFilters() {
    final filters = <FilterModel>[];
    for (final type in Type.values) {
      filters.add(
        FilterModel(
          type: type,
          name: getTypeName(type),
        ),
      );
    }
    return filters;
  }
}
