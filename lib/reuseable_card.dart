import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild});
  final Color colour;
  final cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200,
      width: 170,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
