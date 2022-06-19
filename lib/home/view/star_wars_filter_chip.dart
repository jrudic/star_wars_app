import 'package:flutter/material.dart';
import 'package:starwars_fan_app/shared/colors.dart';
import 'package:starwars_fan_app/shared/model/filter_model.dart';

class StarWarsFilterChip extends StatelessWidget {
  const StarWarsFilterChip({
    super.key,
    required this.filterModel,
    required this.onTap,
  });

  final FilterModel filterModel;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ChoiceChip(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        selected: filterModel.isSelected,
        labelPadding: EdgeInsets.zero,
        avatar: filterModel.isSelected
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.check,
                  color: StarWarsColors.selectedColor,
                  size: 20,
                ),
              )
            : null,
        label: Text(
          filterModel.name!,
        ),
        onSelected: (bool selected) {
          filterModel.isSelected = selected;
          onTap(filterModel, selected);
        },
        selectedColor: Colors.white,
        backgroundColor: Colors.white,
        shape: StadiumBorder(
          side: BorderSide(
            color: filterModel.isSelected
                ? StarWarsColors.selectedColor
                : Colors.grey,
          ),
        ),
      ),
    );
  }
}
