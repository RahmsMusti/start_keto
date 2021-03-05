import 'package:flutter/material.dart';
import 'package:start_keto/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.contentName, this.icon});

  final String contentName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          contentName,
          style: kContentNameTextStyle,
        )
      ],
    );
  }
}
