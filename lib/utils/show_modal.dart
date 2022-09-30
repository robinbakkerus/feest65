import 'package:flutter/material.dart';

class ShowModal {
  final BuildContext context;

  ShowModal(this.context);

  show(String msg, Widget body) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Silent Disco ...'),
          content: body,
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Ok'),
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
