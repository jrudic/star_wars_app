class VehicleModel {
  VehicleModel({
    this.cargoCapacity,
    this.consumables,
    this.costInCredits,
    this.created,
    this.crew,
    this.edited,
    this.length,
    this.manufacturer,
    this.maxAtmospheringSpeed,
    this.model,
    this.name,
    this.passengers,
    this.pilots,
    this.films,
    this.url,
    this.vehicleClass,
  });

  VehicleModel.fromJson(dynamic json) {
    cargoCapacity = json['cargo_capacity'] as String;
    consumables = json['consumables'] as String;
    costInCredits = json['cost_in_credits'] as String;
    created = json['created'] as String;
    crew = json['crew'] as String;
    edited = json['edited'] as String;
    length = json['length'] as String;
    manufacturer = json['manufacturer'] as String;
    maxAtmospheringSpeed = json['max_atmosphering_speed'] as String;
    model = json['model'] as String;
    name = json['name'] as String;
    passengers = json['passengers'] as String;
    pilots = (json['pilots'] != null
        ? json['pilots'].cast<String>()
        : <String>[]) as List<String>;
    films = (json['films'] != null ? json['films'].cast<String>() : <String>[])
        as List<String>;
    url = json['url'] as String;
    vehicleClass = json['vehicle_class'] as String;
  }

  String? cargoCapacity;
  String? consumables;
  String? costInCredits;
  String? created;
  String? crew;
  String? edited;
  String? length;
  String? manufacturer;
  String? maxAtmospheringSpeed;
  String? model;
  String? name;
  String? passengers;
  List<String>? pilots;
  List<String>? films;
  String? url;
  String? vehicleClass;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cargo_capacity'] = cargoCapacity;
    map['consumables'] = consumables;
    map['cost_in_credits'] = costInCredits;
    map['created'] = created;
    map['crew'] = crew;
    map['edited'] = edited;
    map['length'] = length;
    map['manufacturer'] = manufacturer;
    map['max_atmosphering_speed'] = maxAtmospheringSpeed;
    map['model'] = model;
    map['name'] = name;
    map['passengers'] = passengers;
    map['pilots'] = pilots;
    map['films'] = films;
    map['url'] = url;
    map['vehicle_class'] = vehicleClass;
    return map;
  }
}
