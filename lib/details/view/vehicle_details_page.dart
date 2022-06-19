import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:starwars_fan_app/details/view/details_page_item.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/vehicles/vehicle_model.dart';

class VehicleDetailsPage extends StatefulWidget {
  const VehicleDetailsPage({super.key, required this.data});

  final ResourceModel data;

  @override
  VehicleDetailsPageState createState() => VehicleDetailsPageState();
}

class VehicleDetailsPageState extends State<VehicleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final vehicleModel = widget.data.data as VehicleModel;

    return Scaffold(
      appBar: EasySearchBar(
        title: Text(l10n.vehiclesText),
        onSearch: (searchTerm) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DetailsPageItem(
                name: l10n.nameText,
                value: vehicleModel.name!,
              ),
              DetailsPageItem(
                name: l10n.modelText,
                value: vehicleModel.model!,
              ),
              DetailsPageItem(
                name: l10n.passengersText,
                value: vehicleModel.passengers!,
              ),
              DetailsPageItem(
                name: l10n.crewText,
                value: vehicleModel.crew!,
              ),
              DetailsPageItem(
                name: l10n.lengthText,
                value: vehicleModel.length!,
              ),
              DetailsPageItem(
                name: l10n.manufacturerText,
                value: vehicleModel.manufacturer!,
              ),
              DetailsPageItem(
                name: l10n.maxAtmospheringSpeedText,
                value: vehicleModel.maxAtmospheringSpeed!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
