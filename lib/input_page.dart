import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:start_keto/icon_content.dart';
import 'package:start_keto/reusable_card.dart';

const bottomContainerHeight = 60.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Your Keto Journey Here'),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          cardChild: IconContent(
                            contentName: 'MALE',
                            icon: FontAwesomeIcons.mars,
                          ),
                          colour: activeCardColour,
                          height: 170.0,
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          cardChild: IconContent(
                            contentName: 'FEMALE',
                            icon: FontAwesomeIcons.venus,
                          ),
                          colour: activeCardColour,
                          height: 170.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    height: 170.0,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          colour: activeCardColour,
                          height: 170.0,
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          colour: activeCardColour,
                          height: 170.0,
                        ),
                      ),
                    ],
                  ),
                ),
                ReusableCard(
                  colour: activeCardColour,
                  height: 85.0,
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
