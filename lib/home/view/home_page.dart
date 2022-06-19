import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/bloc/home_bloc.dart';
import 'package:starwars_fan_app/home/view/star_wars_filter_chip.dart';
import 'package:starwars_fan_app/home/view/star_wars_list_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/shared/model/filter_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required List<ResourceModel> resources}) {
    filters = ResourcesHelper().getFilters();
    homeBloc = HomeBloc(resources);
  }

  late HomeBloc homeBloc;
  late List<FilterModel> filters;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late List<ResourceModel> starWarsData;
  String searchValue = '';

  @override
  void initState() {
    super.initState();
    getFilteredData();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.appName),
        onSearch: (value) =>
            {setState(() => searchValue = value), getFilteredData()},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          right: 16,
          left: 16,
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.filters.length,
                  itemBuilder: (BuildContext context, int index) {
                    return StarWarsFilterChip(
                      filterModel: widget.filters[index],
                      onTap: (FilterModel filter, bool selected) {
                        getFilteredData();
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: starWarsData.length,
                itemBuilder: (BuildContext context, int index) {
                  return StarWarsListItem(
                    resourceModel: starWarsData[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void getFilteredData() {
    starWarsData = widget.homeBloc.getFilteredData(widget.filters, searchValue);
  }
}
