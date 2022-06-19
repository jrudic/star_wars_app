class FilmModel {
  FilmModel({
    this.characters,
    this.created,
    this.director,
    this.edited,
    this.episodeId,
    this.openingCrawl,
    this.planets,
    this.producer,
    this.releaseDate,
    this.species,
    this.starships,
    this.title,
    this.url,
    this.vehicles,
  });

  FilmModel.fromJson(dynamic json) {
    characters = (json['characters'] != null
        ? json['characters'].cast<String>()
        : <String>[]) as List<String>;
    created = json['created'] as String;
    director = json['director'] as String;
    edited = json['edited'] as String;
    episodeId = json['episode_id'] as int;
    openingCrawl = json['opening_crawl'] as String;
    planets = (json['planets'] != null
        ? json['planets'].cast<String>()
        : <String>[]) as List<String>;
    producer = json['producer'] as String;
    releaseDate = json['release_date'] as String;
    species = (json['species'] != null
        ? json['species'].cast<String>()
        : <String>[]) as List<String>;
    starships = (json['starships'] != null
        ? json['starships'].cast<String>()
        : <String>[]) as List<String>;
    title = json['title'] as String;
    url = json['url'] as String;
    vehicles = (json['vehicles'] != null
        ? json['vehicles'].cast<String>()
        : <String>[]) as List<String>;
  }

  List<String>? characters;
  String? created;
  String? director;
  String? edited;
  int? episodeId;
  String? openingCrawl;
  List<String>? planets;
  String? producer;
  String? releaseDate;
  List<String>? species;
  List<String>? starships;
  String? title;
  String? url;
  List<String>? vehicles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['characters'] = characters;
    map['created'] = created;
    map['director'] = director;
    map['edited'] = edited;
    map['episode_id'] = episodeId;
    map['opening_crawl'] = openingCrawl;
    map['planets'] = planets;
    map['producer'] = producer;
    map['release_date'] = releaseDate;
    map['species'] = species;
    map['starships'] = starships;
    map['title'] = title;
    map['url'] = url;
    map['vehicles'] = vehicles;
    return map;
  }
}
