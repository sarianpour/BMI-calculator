import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.genderIcon, @required this.genderLabel});
  final genderIcon;
  final genderLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderLabel, style: kLabelTextStyle)
      ],
    );
  }
}
