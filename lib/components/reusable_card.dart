import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  Color cardColor;
  Widget cardChild;
  Function onPress;

  ReusableCard({Color cardColour, Widget cardChild, Function onPress}) {
    this.cardColor = cardColour;
    this.cardChild = cardChild;
    this.onPress = onPress;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
