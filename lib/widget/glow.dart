import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

 Widget _image() {
    return Container(
      width: 0.7 * AppData.srceenHeight,
      height: 0.7 * AppData.srceenHeight - 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("web/assets/glow.jpg"),
        ),
      ),
    );
  }


List<Widget> _glowWidgets = [
  Text("9 november begint ook lichtfestival Glow"),
  Text("Dit zijn foto's van de Catharinakerk, vlakbij het RGB café"),
  Container(height: 10.0),
  // _image(),
];

class GlowFestival {
  final BuildContext context;
  GlowFestival(context) : this.context = context;

  void dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> showGlowInfo() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Glow'),
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
          itemCount: _glowWidgets.length,
          itemBuilder: (context, idx) {
            return _glowWidgets[idx];
          }),
    );
  }
}
