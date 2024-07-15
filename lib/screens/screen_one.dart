import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ufs_task/core/color_constants.dart';
import 'package:ufs_task/core/constants.dart';
import 'package:ufs_task/screens/widgets/button_widget.dart';
import 'package:ufs_task/screens/widgets/child_expansion_widget.dart';

///[ScreenOne] is a StatefulWidget that returns a Scaffold with SafeArea, Padding, Column, SingleChildScrollView, Text, ExpansionTile, TextFormField, Row, ButtonWidget
///and ChildExpansionWidget.

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  ///[listOfTitles] is a list of strings that contains the titles of the ExpansionTile.
  final listOfTitles = [
    "Chemical Hazard",
    "Biological Hazard",
    "Physical Hazard",
    "Ergonomic Hazard",
    "Psychosocial Hazard",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.heightBox,
                        // Svg icon
                        SvgPicture.asset(
                          "assets/hamburgericon.svg",
                          height: 30,
                          width: 30,
                        ),
                        40.heightBox,

                        Text(
                          "Risk Management",
                          style: TextStyleConstants.title,
                        ),
                        30.heightBox,
                        // This is the Listview for Expansion Tile
                        Theme(
                          data: Theme.of(context).copyWith(
                            dividerColor: Colors.transparent,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (context, index) {
                              final title = listOfTitles[index];
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: ExpansionTile(
                                  collapsedBackgroundColor:
                                      ColorConstants.expansionTileColor,
                                  title: Text(
                                    title,
                                    style: TextStyleConstants.subtitle,
                                  ),
                                  trailing: const Icon(Icons.arrow_drop_down),
                                  children: const <Widget>[
                                    ChildExpansionWidget(),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return 15.heightBox;
                            },
                            itemCount: listOfTitles.length,
                          ),
                        ),
                        25.heightBox,
                        // Large TextFormField
                        TextFormField(
                          maxLines: 8,
                          decoration: const InputDecoration(
                            hintText: "Enter Notes",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ).expanded(),

                  // skip and save button
                  Row(
                    children: [
                      const Flexible(
                        flex: 1,
                        child: ButtonWidget(
                          color: ColorConstants.skipButtonColor,
                          title: "Skip",
                          textColor: Colors.white,
                        ),
                      ),
                      10.widthBox,
                      const Flexible(
                        flex: 3,
                        child: ButtonWidget(
                          color: ColorConstants.saveButtonColor,
                          title: "Save",
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
