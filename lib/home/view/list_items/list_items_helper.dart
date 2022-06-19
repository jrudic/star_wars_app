import 'package:flutter/material.dart';

class ListItemsHelper {
  BoxDecoration getListItemDecoration(Color lineColor) {
    return BoxDecoration(
      border: Border.all(
        color: lineColor,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    );
  }
}
