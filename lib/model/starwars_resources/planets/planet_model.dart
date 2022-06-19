class PlanetModel {
  PlanetModel({
    this.climate,
    this.created,
    this.diameter,
    this.edited,
    this.films,
    this.gravity,
    this.name,
    this.orbitalPeriod,
    this.population,
    this.residents,
    this.rotationPeriod,
    this.surfaceWater,
    this.terrain,
    this.url,
  });

  PlanetModel.fromJson(dynamic json) {
    climate = json['climate'] as String;
    created = json['created'] as String;
    diameter = json['diameter'] as String;
    edited = json['edited'] as String;
    films = (json['films'] != null ? json['films'].cast<String>() : <String>[])
        as List<String>;
    gravity = json['gravity'] as String;
    name = json['name'] as String;
    orbitalPeriod = json['orbital_period'] as String;
    population = json['population'] as String;
    residents = (json['residents'] != null
        ? json['residents'].cast<String>()
        : <String>[]) as List<String>;
    rotationPeriod = json['rotation_period'] as String;
    surfaceWater = json['surface_water'] as String;
    terrain = json['terrain'] as String;
    url = json['url'] as String;
  }

  String? climate;
  String? created;
  String? diameter;
  String? edited;
  List<String>? films;
  String? gravity;
  String? name;
  String? orbitalPeriod;
  String? population;
  List<String>? residents;
  String? rotationPeriod;
  String? surfaceWater;
  String? terrain;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['climate'] = climate;
    map['created'] = created;
    map['diameter'] = diameter;
    map['edited'] = edited;
    map['films'] = films;
    map['gravity'] = gravity;
    map['name'] = name;
    map['orbital_period'] = orbitalPeriod;
    map['population'] = population;
    map['residents'] = residents;
    map['rotation_period'] = rotationPeriod;
    map['surface_water'] = surfaceWater;
    map['terrain'] = terrain;
    map['url'] = url;
    return map;
  }
}
