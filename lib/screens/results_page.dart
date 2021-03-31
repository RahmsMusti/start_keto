import 'package:flutter/material.dart';
import 'package:start_keto/constants.dart';
import 'package:start_keto/screens/input_page.dart';
import 'package:start_keto/components/reusable_card.dart';
import 'package:start_keto/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  static const String id = 'results_page';
  ResultsPage({this.dailyCalories, this.weeklyCalories, this.bmrResult});
  final int dailyCalories;
  final int weeklyCalories;
  final String bmrResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Weight Loss Calories',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmrResult,
                    style: kCaloriesTextStyle,
                  ),
                  Text(
                    'calories per day',
                    style: kContentNameTextStyle,
                  ),
                  Divider(
                    thickness: 5.0,
                  ),
                  Text(
                    weeklyCalories.toString(),
                    style: kCaloriesTextStyle,
                  ),
                  Text(
                    'calories per week',
                    style: kContentNameTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context, InputPage.id);
            },
            buttonTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
