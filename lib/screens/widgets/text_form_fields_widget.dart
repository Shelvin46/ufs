import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants.dart';

class TextFormFieldWidgets extends StatelessWidget {
  const TextFormFieldWidgets({
    super.key,
    required this.titleOne,
    required this.titleTwo,
    this.isLast = false,
  });

  final String titleOne;
  final String titleTwo;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleOne,
                style: TextStyleConstants.smallTitle,
              ),
              5.heightBox,
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
        25.widthBox,
        isLast
            ? const Flexible(child: SizedBox.shrink())
            : Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleTwo,
                      style: TextStyleConstants.smallTitle,
                    ),
                    5.heightBox,
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
      ],
    );
  }
}
