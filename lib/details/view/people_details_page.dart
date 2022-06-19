import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/details_page_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/people/people_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';

class PeopleDetailsPage extends StatefulWidget {
  const PeopleDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  PeopleDetailsPageState createState() => PeopleDetailsPageState();
}

class PeopleDetailsPageState extends State<PeopleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final peopleModel = widget.data.data as PeopleModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.peopleText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(name: l10n.nameText, value: peopleModel.name!),
              DetailsPageItem(
                name: l10n.massText,
                value: peopleModel.mass!,
              ),
              DetailsPageItem(
                name: l10n.genderText,
                value: peopleModel.gender!,
              ),
              DetailsPageItem(
                name: l10n.heightText,
                value: peopleModel.height!,
              ),
              DetailsPageItem(
                name: l10n.birthYearText,
                value: peopleModel.birthYear!,
              ),
              DetailsPageItem(
                name: l10n.hairColorsText,
                value: peopleModel.hairColor!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
