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
  Text("Sinds september de meest populaire uitgaansgelegenheid in het RGB café op het Stratumseind. De naam RGB komt van de drie kanalen Rood Groen of Blauw die op koptelefoon gekozen kan worden. "),
  Container(height: 10.0),
  _image(),
];

class SilentDisco {
  void showInfo() {
    AppData.showModal.show('Silent Disco ...', _body());
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
