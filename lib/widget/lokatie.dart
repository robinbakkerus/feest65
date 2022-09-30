import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

class Locatie extends StatelessWidget {
  const Locatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("todo");
  }
}

Widget _image() {
  return Container(
    width: 0.7 * AppData.srceenHeight,
    height: 0.7 * AppData.srceenHeight - 100,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage("web/assets/rgb-cafe.jpg"),
      ),
    ),
  );
}

List<Widget> notes = [
  const Text("Adres: Stratumseind 36"),
  const Text("Vanaf 16:00 "),
  const Text(
      "Daarna kun je naadloos bij de jeugd aansluiten voor de Silent disco of nog een stukje van de Glow route lopen."),
  Container(height: 10.0),
  _image(),
];

class LokatieInfo {
  void showLokatieInfo() {
    debugPrint("TODO ${AppData.showModal}");
    AppData.showModal?.show('Waar en hoe laat ...', _body());
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
