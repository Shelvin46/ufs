import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    this.color,
    this.textColor,
  });
  final String title;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: color ?? Colors.amber,
      child: Text(
        title,
        style: TextStyleConstants.subtitle
            .copyWith(color: textColor ?? Colors.white),
      ),
    );
  }
}
