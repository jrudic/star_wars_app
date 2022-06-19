import 'dart:async';

import 'package:starwars_fan_app/model/starwars_resources/films/film_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/people/people_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/planets/planet_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/species/speices_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/starships/starship_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/vehicles/vehicle_model.dart';
import 'package:starwars_fan_app/repository/films_repository.dart';
import 'package:starwars_fan_app/repository/people_repository.dart';
import 'package:starwars_fan_app/repository/planets_repository.dart';
import 'package:starwars_fan_app/repository/species_repository.dart';
import 'package:starwars_fan_app/repository/starships_repository.dart';
import 'package:starwars_fan_app/repository/vehicles_repository.dart';

class ResourcesBloc {
  List<ResourceModel> resourcesModel = <ResourceModel>[];

  final StreamController<List<ResourceModel>> _resourcesController =
      StreamController<List<ResourceModel>>.broadcast();

  Stream<List<ResourceModel>> get resources => _resourcesController.stream;

  Future<void> getResources() async {
    await Future.wait([
      getFilms(),
      getPeople(),
      getPlanets(),
      getSpecies(),
      getStarships(),
      getVehicles()
    ]).then((response) => sinkResult());
  }

  Future<void> getVehicles() async {
    final dynamic vehicles = await VehiclesRepository().getAllVehicles();
    for (final vehicle in vehicles) {
      resourcesModel.add(
        ResourceModel(
          type: Type.vehicles,
          data: VehicleModel.fromJson(vehicle),
        ),
      );
    }
  }

  Future<void> getStarships() async {
    final dynamic starships = await StarshipsRepository().getAllStarships();
    for (final starship in starships) {
      resourcesModel.add(
        ResourceModel(
          type: Type.starships,
          data: StarshipModel.fromJson(starship),
        ),
      );
    }
  }

  Future<void> getSpecies() async {
    final dynamic species = await SpeciesRepository().getAllSpecies();
    for (final specie in species) {
      resourcesModel.add(
        ResourceModel(
          type: Type.species,
          data: SpeciesModel.fromJson(specie),
        ),
      );
    }
  }

  Future<void> getPeople() async {
    final dynamic people = await PeopleRepository().getAllPeople();
    for (final character in people) {
      resourcesModel.add(
        ResourceModel(
          type: Type.people,
          data: PeopleModel.fromJson(character),
        ),
      );
    }
  }

  Future<void> getPlanets() async {
    final dynamic planets = await PlanetsRepository().getAllPlanets();
    for (final planet in planets) {
      resourcesModel.add(
        ResourceModel(
          type: Type.planet,
          data: PlanetModel.fromJson(planet),
        ),
      );
    }
  }

  Future<void> getFilms() async {
    final dynamic films = await FilmsRepository().getAllFilms();
    for (final film in films) {
      resourcesModel.add(
        ResourceModel(
          type: Type.film,
          data: FilmModel.fromJson(film),
        ),
      );
    }
  }

  void dispose() {
    _resourcesController.close();
  }

  void sinkResult() {
    resourcesModel.shuffle();
    _resourcesController.sink.add(resourcesModel);
  }
}
