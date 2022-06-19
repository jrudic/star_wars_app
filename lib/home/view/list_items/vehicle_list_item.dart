import 'package:flutter/material.dart';
import 'package:starwars_fan_app/home/view/list_items/list_items_helper.dart';
import 'package:starwars_fan_app/l10n/l10n.dart';
import 'package:starwars_fan_app/model/starwars_resources/resource_model.dart';
import 'package:starwars_fan_app/model/starwars_resources/vehicles/vehicle_model.dart';
import 'package:starwars_fan_app/shared/resources_helper.dart';

class VehicleListItem extends StatelessWidget {
  const VehicleListItem({
    super.key,
    required this.vehicle,
  });

  final VehicleModel vehicle;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ListItemsHelper().getListItemDecoration(Colors.brown),
      child: GestureDetector(
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
                      vehicle.name!,
                    ),
                  ],
                ),
                Text(
                  ResourcesHelper().getTypeName(Type.vehicles),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${l10n.vehicleClassText}: ',
                ),
                Text(
                  vehicle.vehicleClass!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
