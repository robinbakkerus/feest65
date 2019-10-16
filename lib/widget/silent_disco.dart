import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

 Widget _image() {
    return Container(
      width: 0.9 * AppData.srceenHeight,
      height: 0.9 * AppData.srceenHeight - 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("web/assets/silentdisco.jpg"),
        ),
      ),
    );
  }


List<Widget> notes = [
  Text("Sinds september de meest populaire uitgaansgelegenheid in het R(ood) G(roen) B(lauw) café op het Stratumseind"),
  Container(height: 10.0),
  _image(),
];

class SilentDisco {
  final BuildContext context;
  SilentDisco(context) : this.context = context;

  void dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> showInfo() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Silent Disco ...'),
          content: _body(),
          actions: <Widget>[
            FlatButton(
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

  Widget _body() {
    return Container(
      width: 0.8 * AppData.screenWidth,
      height: 0.7 * AppData.srceenHeight,
      child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, idx) {
            return notes[idx];
          }),
    );
  }

}
