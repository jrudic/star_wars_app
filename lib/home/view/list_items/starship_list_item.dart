import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/list_items_helper.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/starships/starship_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class StarshipListItem extends StatelessWidget {
  const StarshipListItem({
    super.key,
    required this.starship,
  });

  final StarshipModel starship;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ListItemsHelper().getListItemDecoration(Colors.lightGreen),
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
                    starship.name!,
                  ),
                ],
              ),
              Text(
                ResourcesHelper().getTypeName(Type.starships),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.mgltText}: ',
              ),
              Text(
                starship.mglt!,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.starshipClassText}: ',
              ),
              Expanded(
                child: Text(
                  starship.starshipClass!,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
