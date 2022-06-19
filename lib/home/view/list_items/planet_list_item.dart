import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/list_items_helper.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/planets/planet_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class PlanetListItem extends StatelessWidget {
  const PlanetListItem({
    super.key,
    required this.planet,
  });

  final PlanetModel planet;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ListItemsHelper().getListItemDecoration(Colors.teal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '${l10n.nameText}: ',
                  ),
                  Text(
                    planet.name!,
                  ),
                ],
              ),
              Text(
                ResourcesHelper().getTypeName(Type.planet),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.climateText}: ',
              ),
              Text(
                planet.climate!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
