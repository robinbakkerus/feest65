import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

Widget _image() {
  return Container(
    width: 0.9 * AppData.srceenHeight,
    height: 0.9 * AppData.srceenHeight - 100,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage("web/assets/glow.jpg"),
      ),
    ),
  );
}

List<Widget> _widgets = [
  Text(
      "Dit weekend begint ook het Glow festival. Deze foto's zijn van de Catharina kerk, vlakbij het RGB café."),
  Container(height: 10.0),
  _image(),
];

class GlowEhv {
  showInfo() {
    AppData.showModal?.show('Glow Eindhoven', _body());
  }

  Widget _body() {
    return Container(
      width: 0.8 * AppData.screenWidth,
      height: 0.7 * AppData.srceenHeight,
      child: ListView.builder(
          itemCount: _widgets.length,
          itemBuilder: (context, idx) {
            return _widgets[idx];
          }),
    );
  }
}
