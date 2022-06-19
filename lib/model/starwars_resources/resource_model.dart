class ResourceModel {
  ResourceModel({
    this.type,
    this.data,
  });

  Type? type;
  dynamic data;
}

enum Type { film, people, planet, species, starships, vehicles }
