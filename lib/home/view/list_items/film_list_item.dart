import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/list_items_helper.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/films/film_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class FilmListItem extends StatelessWidget {
  const FilmListItem({
    super.key,
    required this.film,
  });

  final FilmModel film;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ListItemsHelper().getListItemDecoration(Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '${l10n.titleText}: ',
                  ),
                  Text(
                    film.title!,
                  ),
                ],
              ),
              Text(
                ResourcesHelper().getTypeName(Type.film),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${l10n.releaseDateText}: ',
              ),
              Text(
                film.releaseDate!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

BoxDecoration getListItemDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.deepOrange,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
  );
}
