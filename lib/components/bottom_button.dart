import 'package:flutter/material.dart';
import '../constants.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  String title;
  Function onTap;

  BottomButton({@required String title, @required Function onTap}) {
    this.title = title;
    this.onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Colors.deepOrange,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 15.0),
        height: 50.0,
      ),
    );
  }
}