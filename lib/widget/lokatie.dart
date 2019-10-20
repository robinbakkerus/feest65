import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';

class Locatie extends StatelessWidget {
  Locatie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("todo");
  }
}


 Widget _image() {
    return Container(
      width: 0.7 * AppData.srceenHeight,
      height: 0.7 * AppData.srceenHeight - 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("web/assets/rgb-cafe.jpg"),
        ),
      ),
    );
  }


List<Widget> notes = [
  Text("Adres: Stratumseind 36"),
  Text("Vanaf 16:00 "),
  Text("Daarna kun je naadloos bij de jeugd aansluiten voor de Silent disco of nog een stukje van de Glow route lopen."),
  Container(height: 10.0),
  _image(),
];

class LokatieInfo {

  void showLokatieInfo() {
    print("TODO " + AppData.showModal.toString());
    AppData.showModal.show('Waar en hoe laat ...', _body());
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
