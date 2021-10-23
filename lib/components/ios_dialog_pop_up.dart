import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IosDialogPopUp extends StatelessWidget {
  const IosDialogPopUp(
      {required this.dialogTitle,
      required this.dialogContent,
      required this.dialogButton});

  final String dialogTitle;
  final String dialogContent;
  final String dialogButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        dialogTitle,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Text(
              dialogContent,
            ),
          ],
        ),
      ),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          child: Text(
            dialogButton,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
