import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/model/filter_model.dart';
import 'package:starwars_fan_app/shared/search_helper.dart';

class HomeBloc {
  HomeBloc(this.resourcesList);

  List<ResourceModel> resourcesList;
  List<ResourceModel> filteredData = <ResourceModel>[];

  List<ResourceModel> getFilteredData(
    List<FilterModel> filters,
    String searchTerm,
  ) {
    filteredData.clear();
    for (final resource in resourcesList) {
      if (isItemInFilterRange(resource, filters) &&
          SearchHelper().isItemInSearchRange(
            resource,
            searchTerm.toLowerCase(),
          )) {
        filteredData.add(resource);
      }
    }
    return filteredData;
  }

  //Check is item in selected filters
  bool isItemInFilterRange(ResourceModel resource, List<FilterModel> filters) {
    for (final filter in filters) {
      if (filter.type == resource.type) {
        return filter.isSelected;
      }
    }
    return false;
  }
}
