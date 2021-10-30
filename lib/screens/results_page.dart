import 'package:flutter/material.dart';
import 'package:start_keto/constants.dart';
import 'package:start_keto/screens/input_page.dart';
import 'package:start_keto/components/reusable_card.dart';
import 'package:start_keto/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  static const String id = 'results_page';
  ResultsPage({this.bmrResult, this.tdeeResult, this.weeklyTDEEResult});

  final String? bmrResult;
  final String? tdeeResult;
  final String? weeklyTDEEResult;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [Tab(text: 'Results'), Tab(text: 'Macros')],
          ),
          title: Text('Your Result'),
        ),
        body: TabBarView(
          children: [
            Column(
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
                          tdeeResult!,
                          style: kCaloriesTextStyle,
                        ),
                        Text(
                          'calories per day',
                          style: kContentNameTextStyle,
                        ),
                        Divider(
                          thickness: 5.0,
                          indent: 10.0,
                          endIndent: 10.0,
                        ),
                        Text(
                          // weeklyCalories.toString(),
                          weeklyTDEEResult!,
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
            Icon(Icons.circle_notifications),
          ],
        ),
      ),
    );
  }
}
