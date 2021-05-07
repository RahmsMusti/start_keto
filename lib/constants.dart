import 'package:flutter/material.dart';

const kPrimaryAppColour = Color(0xFF0A0E21);
const kBackgroundColour = Color(0xFF0A0E21);
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);
const kSliderThumbColour = Color(0xFFEB1555);
const kActiveSliderTrackColour = Colors.white;
const kInactiveSliderTrackColour = Color(0xFF8D8E98);
const kSliderThumbOverlayColour = Color(0x1FEB1555);

const kBottomContainerHeight = 65.0;
const kSliderThumbShape = RoundSliderThumbShape(enabledThumbRadius: 15.0);
const kSliderThumbOverlayShape = RoundSliderOverlayShape(overlayRadius: 30.0);

const kContentNameTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kSliderNumberTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);

const kListPickerTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kTitleTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kCaloriesTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const Map<String, double> kDailyActivityLevelOptions = {
  'DAILY ACTIVITY LEVEL (SELECT HERE)': 0.0,
  'SEDENTARY (OFFICE JOB)': 1.2,
  'LIGHT EXERCISE (1-2 DAYS/WEEK)': 1.375,
  'MODERATE EXERCISE (3-5 DAYS/WEEK)': 1.55,
  'HEAVY EXERCISE (6-7 DAYS/WEEK)': 1.725,
  'ATHLETE (2X DAY)': 1.9,
};
