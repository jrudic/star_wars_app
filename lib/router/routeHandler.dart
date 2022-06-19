import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/film_details_page.dart';
import 'package:starwars_fan_app/details/view/people_details_page.dart';
import 'package:starwars_fan_app/details/view/planet_details_page.dart';
import 'package:starwars_fan_app/details/view/species_details_page.dart';
import 'package:starwars_fan_app/details/view/starship_details_page.dart';
import 'package:starwars_fan_app/details/view/vehicle_details_page.dart';
import 'package:starwars_fan_app/home/view/home_page.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/router/routes.dart';
import 'package:starwars_fan_app/splash/splash.dart';

Route<dynamic> routeHandler(RouteSettings settings) {
  final name = settings.name;
  final dynamic arguments = settings.arguments;

  return MaterialPageRoute<void>(
    settings: RouteSettings(name: name, arguments: arguments),
    builder: (context) {
      switch (name) {
        case Routes.homePage:
          final resources = settings.arguments! as List<ResourceModel>;
          return HomePage(
            resources: resources,
          );
        case Routes.detailsPage:
          final resources = settings.arguments! as ResourceModel;
          switch (resources.type!) {
            case Type.vehicles:
              return VehicleDetailsPage(
                data: resources,
              );
            case Type.starships:
              return StarshipDetailsPage(
                data: resources,
              );
            case Type.species:
              return SpeciesDetailsPage(
                data: resources,
              );
            case Type.planet:
              return PlanetDetailsPage(
                data: resources,
              );
            case Type.film:
              return FilmDetailsPage(
                data: resources,
              );
            case Type.people:
              return PeopleDetailsPage(
                data: resources,
              );
          }
        default:
          return const SplashPage();
      }
    },
  );
}
