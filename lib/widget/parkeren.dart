import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

Widget _image() {
  return Container(
    width: 0.7 * AppData.srceenHeight,
    height: 0.7 * AppData.srceenHeight - 100,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage("web/assets/parkeerplaatsen.jpg"),
      ),
    ),
  );
}

List<Widget> notes = [
  const Text("1. Dicht bij in het centrum onder de Heuvelgalerie"),
  const Text("2. Naast het PSV stadion"),
  const Text("3. Bij de TU"),
  Container(height: 10.0),
  _image(),
];

class ParkeerInfo {
  void showParkeerInfo() {
    AppData.showModal?.show('Parkeer plaatsen ...', _body());
  }

  Widget _body() {
    return SizedBox(
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
