import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/details_page_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/species/speices_model.dart';

class SpeciesDetailsPage extends StatefulWidget {
  const SpeciesDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  SpeciesDetailsPageState createState() => SpeciesDetailsPageState();
}

class SpeciesDetailsPageState extends State<SpeciesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final speciesModel = widget.data.data as SpeciesModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.speciesText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(name: l10n.nameText, value: speciesModel.name!),
              DetailsPageItem(
                name: l10n.languageText,
                value: speciesModel.language!,
              ),
              DetailsPageItem(
                name: l10n.hairColorsText,
                value: speciesModel.hairColors!,
              ),
              DetailsPageItem(
                name: l10n.skinColorsText,
                value: speciesModel.skinColors!,
              ),
              DetailsPageItem(
                name: l10n.eyeColorsText,
                value: speciesModel.eyeColors!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
