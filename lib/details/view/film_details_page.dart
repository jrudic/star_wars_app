import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/details_page_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/films/film_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';

class FilmDetailsPage extends StatefulWidget {
  const FilmDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  FilmDetailsPageState createState() => FilmDetailsPageState();
}

class FilmDetailsPageState extends State<FilmDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final filmModel = widget.data.data as FilmModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.filmText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(name: l10n.titleText, value: filmModel.title!),
              DetailsPageItem(
                name: l10n.producerText,
                value: filmModel.producer!,
              ),
              DetailsPageItem(
                name: l10n.episodeIdText,
                value: filmModel.episodeId!.toString(),
              ),
              DetailsPageItem(
                name: l10n.openingCrawlText,
                value: filmModel.openingCrawl!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
