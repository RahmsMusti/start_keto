import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:start_keto/components/icon_content.dart';
import 'package:start_keto/screens/results_page.dart';
import 'package:start_keto/components/reusable_card.dart';
import 'package:start_keto/constants.dart';
import 'package:start_keto/components/round_icon_button.dart';
import 'package:start_keto/components/bottom_button.dart';
import 'package:start_keto/calorie_calculation.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  static const String id = 'input_page';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
  String dropdownValue = 'DAILY ACTIVITY LEVEL (SELECT HERE)';
  double dailyActivityLevelValue = 0.0;

  //TODO: Create Gender alert
  //TODO: Create Cupertino alerts
  //TODO: Refactor alert
  //Alert to inform the user that they haven't selected their daily activity level
  Future<void> dailyActivityAlert() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information Missing'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Please Select Your Daily Activity Level'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Your Keto Journey Here'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        cardChild: IconContent(
                          contentName: 'MALE',
                          icon: FontAwesomeIcons.mars,
                        ),
                        colour: selectedGender == Gender.male
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        height: 170.0,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        cardChild: IconContent(
                          contentName: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ),
                        colour: selectedGender == Gender.female
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        height: 170.0,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kContentNameTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kSliderNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kContentNameTextStyle,
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                    colour: kActiveCardColour,
                    height: 170.0,
                  ),
                ),
                ReusableCard(
                  colour: kActiveCardColour,
                  height: 85.0,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TODO:Refactor Dropdown Button
                      DropdownButton<double>(
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 24,
                        elevation: 16,
                        style: kListPickerTextStyle,
                        items: kDailyActivityLevelOptions
                            .map((description, value) {
                              return MapEntry(
                                  description,
                                  DropdownMenuItem<double>(
                                    value: value,
                                    child: Text(description),
                                  ));
                            })
                            .values
                            .toList(),
                        value: dailyActivityLevelValue,
                        onChanged: (newValue) {
                          setState(() {
                            dailyActivityLevelValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        height: 170.0,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kContentNameTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kSliderNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        height: 170.0,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kContentNameTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kSliderNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottomButton(
              onTap: () {
                CalorieCalculator calc = CalorieCalculator(
                  height: height,
                  weight: weight,
                  age: age,
                  activityValue: dailyActivityLevelValue,
                  gender: selectedGender,
                );
                if (dailyActivityLevelValue == 0.0) {
                  dailyActivityAlert();
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultsPage(
                                bmrResult: calc.calculateBMR(),
                                tdeeResult: calc.calculateTDEE(),
                                weeklyTDEEResult: calc.calculateWeeklyTDEE(),
                              )));
                }
              },
              buttonTitle: 'CALCULATE'),
        ],
      ),
    );
  }
}
