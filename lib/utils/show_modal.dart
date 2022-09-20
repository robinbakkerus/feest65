import 'package:flutter/material.dart';

class ShowModal {
  final BuildContext context;

  ShowModal(context) : this.context = context;

  show(String msg, Widget body) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Silent Disco ...'),
          content: body,
          actions: <Widget>[
            ElevatedButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
