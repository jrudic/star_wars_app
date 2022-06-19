class StarshipModel {
  StarshipModel({
    this.mglt,
    this.cargoCapacity,
    this.consumables,
    this.costInCredits,
    this.created,
    this.crew,
    this.edited,
    this.hyperdriveRating,
    this.length,
    this.manufacturer,
    this.maxAtmospheringSpeed,
    this.model,
    this.name,
    this.passengers,
    this.films,
    this.pilots,
    this.starshipClass,
    this.url,
  });

  StarshipModel.fromJson(dynamic json) {
    mglt = json['MGLT'] as String;
    cargoCapacity = json['cargo_capacity'] as String;
    consumables = json['consumables'] as String;
    costInCredits = json['cost_in_credits'] as String;
    created = json['created'] as String;
    crew = json['crew'] as String;
    edited = json['edited'] as String;
    hyperdriveRating = json['hyperdrive_rating'] as String;
    length = json['length'] as String;
    manufacturer = json['manufacturer'] as String;
    maxAtmospheringSpeed = json['max_atmosphering_speed'] as String;
    model = json['model'] as String;
    name = json['name'] as String;
    passengers = json['passengers'] as String;
    films = (json['films'] != null ? json['films'].cast<String>() : <String>[])
        as List<String>;
    pilots = (json['pilots'] != null
        ? json['pilots'].cast<String>()
        : <String>[]) as List<String>;
    starshipClass = json['starship_class'] as String;
    url = json['url'] as String;
  }

  String? mglt;
  String? cargoCapacity;
  String? consumables;
  String? costInCredits;
  String? created;
  String? crew;
  String? edited;
  String? hyperdriveRating;
  String? length;
  String? manufacturer;
  String? maxAtmospheringSpeed;
  String? model;
  String? name;
  String? passengers;
  List<String>? films;
  List<String>? pilots;
  String? starshipClass;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MGLT'] = mglt;
    map['cargo_capacity'] = cargoCapacity;
    map['consumables'] = consumables;
    map['cost_in_credits'] = costInCredits;
    map['created'] = created;
    map['crew'] = crew;
    map['edited'] = edited;
    map['hyperdrive_rating'] = hyperdriveRating;
    map['length'] = length;
    map['manufacturer'] = manufacturer;
    map['max_atmosphering_speed'] = maxAtmospheringSpeed;
    map['model'] = model;
    map['name'] = name;
    map['passengers'] = passengers;
    map['films'] = films;
    map['pilots'] = pilots;
    map['starship_class'] = starshipClass;
    map['url'] = url;
    return map;
  }
}
