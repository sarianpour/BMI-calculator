import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onTap, @required this.label});

  final Function onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        child: Center(child: Text(label, style: kButtonLabelStyle)),
      ),
    );
  }
}
