import 'package:starwars_fan_app/model/starwars_resources/films/film_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/people/people_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/planets/planet_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/species/speices_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/starships/starship_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/vehicles/vehicle_model.dart';

class SearchHelper {
  //Check is item in search range; is searchTerm contained in object
  bool isItemInSearchRange(ResourceModel resource, String searchTerm) {
    switch (resource.type!) {
      case Type.vehicles:
        return isItemInSearchVehicles(
          resource.data as VehicleModel,
          searchTerm,
        );
      case Type.starships:
        return isItemInSearchStarships(
          resource.data as StarshipModel,
          searchTerm,
        );
      case Type.species:
        return isItemInSearchSpecies(
          resource.data as SpeciesModel,
          searchTerm,
        );
      case Type.planet:
        return isItemInSearchPlanet(
          resource.data as PlanetModel,
          searchTerm,
        );
      case Type.film:
        return isItemInSearchFilm(
          resource.data as FilmModel,
          searchTerm,
        );
      case Type.people:
        return isItemInSearchPeople(
          resource.data as PeopleModel,
          searchTerm,
        );
    }
  }

  bool isItemInSearchVehicles(VehicleModel data, String searchTerm) {
    if (data.name!.contains(searchTerm)) {
      return true;
    }
    if (data.model!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.vehicleClass!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.consumables!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    return false;
  }

  bool isItemInSearchStarships(StarshipModel data, String searchTerm) {
    if (data.name!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.model!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.starshipClass!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    return false;
  }

  bool isItemInSearchPeople(PeopleModel data, String searchTerm) {
    if (data.name!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.homeworld!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.height!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    return false;
  }

  bool isItemInSearchSpecies(SpeciesModel data, String searchTerm) {
    if (data.name!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.homeWorld != null) {
      if (data.homeWorld!.toLowerCase().contains(searchTerm)) {
        return true;
      }
    }
    return false;
  }

  bool isItemInSearchPlanet(PlanetModel data, String searchTerm) {
    if (data.name!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.terrain!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    return false;
  }

  bool isItemInSearchFilm(FilmModel data, String searchTerm) {
    if (data.title!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.director!.toLowerCase().contains(searchTerm)) {
      return true;
    }
    if (data.episodeId!.toString().toLowerCase().contains(searchTerm)) {
      return true;
    }
    return false;
  }
}
