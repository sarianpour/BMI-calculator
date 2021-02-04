import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import '../components/constants.dart';
import 'package:bmi_calculator/components/Buttom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultLabel,
      @required this.resultIndex,
      @required this.resultDescription});

  final String resultLabel;
  final String resultIndex;
  final String resultDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.all(15),
                  child: Text('Your Result', style: kHeaderStyle))),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(resultLabel.toUpperCase(), style: kStatusTextStyle),
                  Text(resultIndex, style: kResultLabelTextStyle),
                  Text(
                    resultDescription,
                    style: kDescriptionStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
              label: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
