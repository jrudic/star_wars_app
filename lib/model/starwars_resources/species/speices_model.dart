class SpeciesModel {
  SpeciesModel({
    this.averageHeight,
    this.averageLifespan,
    this.classification,
    this.created,
    this.designation,
    this.edited,
    this.eyeColors,
    this.hairColors,
    this.homeWorld,
    this.language,
    this.name,
    this.people,
    this.films,
    this.skinColors,
    this.url,
  });

  SpeciesModel.fromJson(dynamic json) {
    averageHeight = json['average_height'] as String;
    averageLifespan = json['average_lifespan'] as String;
    classification = json['classification'] as String;
    created = json['created'] as String;
    designation = json['designation'] as String;
    edited = json['edited'] as String;
    eyeColors = json['eye_colors'] as String;
    hairColors = json['hair_colors'] as String;
    homeWorld = json['homeworld'] as String?;
    language = json['language'] as String;
    name = json['name'] as String;
    people = (json['people'] != null
        ? json['people'].cast<String>()
        : <String>[]) as List<String>;
    films = (json['films'] != null ? json['films'].cast<String>() : <String>[])
        as List<String>;
    skinColors = json['skin_colors'] as String;
    url = json['url'] as String;
  }

  String? averageHeight;
  String? averageLifespan;
  String? classification;
  String? created;
  String? designation;
  String? edited;
  String? eyeColors;
  String? hairColors;
  String? homeWorld;
  String? language;
  String? name;
  List<String>? people;
  List<String>? films;
  String? skinColors;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average_height'] = averageHeight;
    map['average_lifespan'] = averageLifespan;
    map['classification'] = classification;
    map['created'] = created;
    map['designation'] = designation;
    map['edited'] = edited;
    map['eye_colors'] = eyeColors;
    map['hair_colors'] = hairColors;
    map['homeworld'] = homeWorld;
    map['language'] = language;
    map['name'] = name;
    map['people'] = people;
    map['films'] = films;
    map['skin_colors'] = skinColors;
    map['url'] = url;
    return map;
  }
}
