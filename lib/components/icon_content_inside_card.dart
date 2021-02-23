import 'package:flutter/material.dart';
import '../constants.dart';

// ignore: must_be_immutable
class IconContentInsideCard extends StatelessWidget {
  IconData iconContent;
  String label;

  IconContentInsideCard({IconData iconContent, String label}) {
    this.iconContent = iconContent;
    this.label = label;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$label',
          style: kTextStyleInsideCard,
        )
      ],
    );
  }
}
