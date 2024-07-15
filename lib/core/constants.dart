import 'package:flutter/material.dart';
import 'package:ufs_task/core/color_constants.dart';

class TextStyleConstants {
  static TextStyle title = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorConstants.textColor,
  );

  static var subtitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorConstants.textColor,
  );

  static var smallTitle = const TextStyle(
    fontSize: 14,
    color: ColorConstants.textColor,
    fontWeight: FontWeight.bold,
  );
}
