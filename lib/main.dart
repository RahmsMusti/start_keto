import 'package:flutter/material.dart';
import 'package:start_keto/constants.dart';
import 'package:start_keto/screens/input_page.dart';
import 'package:start_keto/screens/results_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(StartKeto());
}

class StartKeto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: InputPage.id,
      routes: {
        InputPage.id: (context) => InputPage(),
        ResultsPage.id: (context) => ResultsPage(),
      },
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
