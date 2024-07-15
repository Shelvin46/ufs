import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants.dart';
import 'package:ufs_task/screens/widgets/text_form_fields_widget.dart';

class ChildExpansionWidget extends StatelessWidget {
  const ChildExpansionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: ExpansionTile(
            collapsedBackgroundColor: const Color.fromARGB(255, 236, 230, 230),
            childrenPadding: const EdgeInsets.only(left: 16, right: 16),
            title: Text(
              "Cleaning Products",
              style: TextStyleConstants.smallTitle,
            ),
            trailing: const Icon(Icons.arrow_drop_down),
            children: [
              const TextFormFieldWidgets(
                titleOne: "Risk Description",
                titleTwo: "Initial Score",
              ),
              10.heightBox,
              const TextFormFieldWidgets(
                titleOne: "Go",
                titleTwo: "Mitigation Measure",
              ),
              10.heightBox,
              const TextFormFieldWidgets(
                titleOne: "Final Score",
                titleTwo: "No Go",
              ),
              10.heightBox,
              const TextFormFieldWidgets(
                titleOne: "Equipment List",
                titleTwo: "",
                isLast: true,
              ),
            ],
          ),
        ),
        15.heightBox,
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: ExpansionTile(
            collapsedBackgroundColor: const Color.fromARGB(255, 236, 230, 230),
            title: Text(
              "Pesiticides",
              style: TextStyleConstants.smallTitle,
            ),
            trailing: const Icon(Icons.arrow_drop_down),
          ),
        ),
        15.heightBox,
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: ExpansionTile(
            collapsedBackgroundColor: const Color.fromARGB(255, 236, 230, 230),
            title: Text(
              "Asbestos",
              style: TextStyleConstants.smallTitle,
            ),
            trailing: const Icon(Icons.arrow_drop_down),
          ),
        ),
      ],
    );
  }
}
