import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/list_items_helper.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/people/people_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class PeopleListItem extends StatelessWidget {
  const PeopleListItem({
    super.key,
    required this.people,
  });

  final PeopleModel people;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ListItemsHelper().getListItemDecoration(Colors.yellowAccent),
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
                    people.name!,
                  ),
                ],
              ),
              Text(
                ResourcesHelper().getTypeName(Type.people),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.genderText}: ',
              ),
              Text(
                people.gender!,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.birthYearText}: ',
              ),
              Text(
                people.birthYear!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
