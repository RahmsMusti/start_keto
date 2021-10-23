import 'package:flutter/material.dart';

class AndroidDialogPopUP extends StatelessWidget {
  const AndroidDialogPopUP(
      {required this.dialogTitle,
      required this.dialogContent,
      required this.dialogButton});

  final String dialogTitle;
  final String dialogContent;
  final String dialogButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        dialogTitle,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(
              dialogContent,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
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
