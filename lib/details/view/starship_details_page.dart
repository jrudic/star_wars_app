import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/details_page_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/starships/starship_model.dart';

class StarshipDetailsPage extends StatefulWidget {
  const StarshipDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  StarshipDetailsPageState createState() => StarshipDetailsPageState();
}

class StarshipDetailsPageState extends State<StarshipDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final starshipModel = widget.data.data as StarshipModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.starshipsText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(
                name: l10n.nameText,
                value: starshipModel.name!,
              ),
              DetailsPageItem(
                name: l10n.modelText,
                value: starshipModel.model!,
              ),
              DetailsPageItem(
                name: l10n.manufacturerText,
                value: starshipModel.manufacturer!,
              ),
              DetailsPageItem(
                name: l10n.crewText,
                value: starshipModel.crew!,
              ),
              DetailsPageItem(
                name: l10n.mgltText,
                value: starshipModel.mglt!,
              ),
              DetailsPageItem(
                name: l10n.lengthText,
                value: starshipModel.length!,
              ),
              DetailsPageItem(
                name: l10n.consumablesText,
                value: starshipModel.consumables!,
              ),
              DetailsPageItem(
                name: l10n.hyperdriveRratingText,
                value: starshipModel.hyperdriveRating!,
              ),
              DetailsPageItem(
                name: l10n.maxAtmospheringSpeedText,
                value: starshipModel.maxAtmospheringSpeed!,
              ),
              DetailsPageItem(
                name: l10n.starshipClassText,
                value: starshipModel.starshipClass!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
