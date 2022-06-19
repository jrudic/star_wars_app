import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';

class FilterModel {
  FilterModel({
    this.type,
    this.name,
    this.isSelected = true,
  });

  Type? type;
  String? name;
  bool isSelected;
}
