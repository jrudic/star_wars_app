import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/planets/planet_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';

import 'details_page_item.dart';

class PlanetDetailsPage extends StatefulWidget {
  const PlanetDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  PlanetDetailsPageState createState() => PlanetDetailsPageState();
}

class PlanetDetailsPageState extends State<PlanetDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final planetModel = widget.data.data as PlanetModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.planetText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(name: l10n.nameText, value: planetModel.name!),
              DetailsPageItem(
                name: l10n.gravityText,
                value: planetModel.gravity!,
              ),
              DetailsPageItem(
                name: l10n.diameterText,
                value: planetModel.diameter!,
              ),
              DetailsPageItem(
                name: l10n.orbitalPeriodText,
                value: planetModel.orbitalPeriod!,
              ),
              DetailsPageItem(
                name: l10n.populationText,
                value: planetModel.population!,
              ),
              DetailsPageItem(
                name: l10n.surfaceWaterText,
                value: planetModel.surfaceWater!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
