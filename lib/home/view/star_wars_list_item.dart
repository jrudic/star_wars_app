import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/film_list_item.dart';
import 'package:starwars_fan_app/home/view/list_items/people_list_item.dart';
import 'package:starwars_fan_app/home/view/list_items/planet_list_item.dart';
import 'package:starwars_fan_app/home/view/list_items/species_list_item.dart';
import 'package:starwars_fan_app/home/view/list_items/starship_list_item.dart';
import 'package:starwars_fan_app/home/view/list_items/vehicle_list_item.dart';
import 'package:starwars_fan_app/model/starwars_resources/films/film_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/people/people_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/planets/planet_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/species/speices_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/starships/starship_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/vehicles/vehicle_model.dart';
import 'package:starwars_fan_app/router/routes.dart';

class StarWarsListItem extends StatelessWidget {
  const StarWarsListItem({
    super.key,
    required this.resourceModel,
  });

  final ResourceModel resourceModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.detailsPage,
          arguments: resourceModel,
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: getItem(resourceModel),
        ),
      ),
    );
  }
}

Widget getItem(ResourceModel resourceModel) {
  switch (resourceModel.type!) {
    case Type.vehicles:
      final vehicle = resourceModel.data! as VehicleModel;
      return VehicleListItem(vehicle: vehicle);
    case Type.starships:
      final starship = resourceModel.data! as StarshipModel;
      return StarshipListItem(starship: starship);
    case Type.species:
      final species = resourceModel.data! as SpeciesModel;
      return SpeciesListItem(species: species);
    case Type.planet:
      final planet = resourceModel.data! as PlanetModel;
      return PlanetListItem(planet: planet);
    case Type.film:
      final film = resourceModel.data! as FilmModel;
      return FilmListItem(film: film);
    case Type.people:
      final people = resourceModel.data! as PeopleModel;
      return PeopleListItem(people: people);
  }
}
