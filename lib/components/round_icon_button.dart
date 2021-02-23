import 'package:flutter/material.dart';

// creating a custom button from the RawMaterialButton
// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  IconData icon;
  Function onPressed;

  RoundIconButton({IconData icon, Function onPressed}) {
    this.icon = icon;
    this.onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Colors.white,
      shape: CircleBorder(),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
