import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.colour, this.cardChild, this.onPress});
  final Function onPress;
  final Color colour;
  final cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: 200,
        width: 170,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: colour),
      ),
    );
  }
}
