import 'package:flutter/material.dart';
import 'package:start_keto/constants.dart';
import 'package:start_keto/input_page.dart';

void main() => runApp(StartKeto());

class StartKeto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: kSliderThumbColour,
          activeTrackColor: kActiveSliderTrackColour,
          inactiveTrackColor: kInactiveSliderTrackColour,
          overlayColor: kSliderThumbOverlayColour,
          thumbShape: kSliderThumbShape,
          overlayShape: kSliderThumbOverlayShape,
        ),
        primaryColor: kPrimaryAppColour,
        scaffoldBackgroundColor: kBackgroundColour,
      ),
      home: InputPage(),
    );
  }
}
