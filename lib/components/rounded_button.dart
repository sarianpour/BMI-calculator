import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.icon, this.weightFunction});

  final IconData icon;
  final Function weightFunction;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: weightFunction,
        fillColor: Colors.white,
        shape: CircleBorder(),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ));
  }
}
