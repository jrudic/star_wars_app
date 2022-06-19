class PeopleModel {
  PeopleModel({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeworld,
    this.films,
    this.species,
    this.vehicles,
    this.starships,
    this.created,
    this.edited,
    this.url,
  });

  PeopleModel.fromJson(dynamic json) {
    name = json['name'] as String;
    height = json['height'] as String;
    mass = json['mass'] as String;
    hairColor = json['hair_color'] as String;
    skinColor = json['skin_color'] as String;
    eyeColor = json['eye_color'] as String;
    birthYear = json['birth_year'] as String;
    gender = json['gender'] as String;
    homeworld = json['homeworld'] as String;
    films = (json['films'] != null ? json['films'].cast<String>() : <String>[])
        as List<String>;
    species = (json['species'] != null
        ? json['species'].cast<String>()
        : <String>[]) as List<String>;
    vehicles = (json['vehicles'] != null
        ? json['vehicles'].cast<String>()
        : <String>[]) as List<String>;
    starships = (json['starships'] != null
        ? json['starships'].cast<String>()
        : <String>[]) as List<String>;
    created = json['created'] as String;
    edited = json['edited'] as String;
    url = json['url'] as String;
  }

  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<String>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['height'] = height;
    map['mass'] = mass;
    map['hair_color'] = hairColor;
    map['skin_color'] = skinColor;
    map['eye_color'] = eyeColor;
    map['birth_year'] = birthYear;
    map['gender'] = gender;
    map['homeworld'] = homeworld;
    map['films'] = films;
    map['species'] = species;
    map['vehicles'] = vehicles;
    map['starships'] = starships;
    map['created'] = created;
    map['edited'] = edited;
    map['url'] = url;
    return map;
  }
}
