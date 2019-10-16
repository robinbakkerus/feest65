import 'package:flutter/material.dart';
import 'package:party/utils/context.dart';
import 'package:party/widget/lokatie.dart';
import 'package:party/widget/parkeren.dart';
import 'package:party/widget/silent_disco.dart';
import 'package:party/widget/glow.dart';

const _c1 = Color.fromRGBO(230, 10, 10, 0.1);
const _c2 = Color.fromRGBO(10, 230, 10, 0.1);
const _c3 = Color.fromRGBO(10, 10, 230, 0.1);
const double _w = 500.0;

class Poster extends StatelessWidget {
  const Poster({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    AppData.screenWidth = MediaQuery.of(context).size.width;
    AppData.srceenHeight = MediaQuery.of(context).size.height;
    AppData.lokatieInfo = LokatieInfo(context);
    AppData.parkeerInfo = ParkeerInfo(context);
    AppData.silentDisco = SilentDisco(context);
    AppData.glow = GlowFestival(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _posterImage(),
        _verSpace(),
        // _aankondiging(),
        _kadoTip(),
        _verSpace(),
        _lokatie(),
        _verSpace(),
        _parkeren(),
        _verSpace(),
        _contact(),
        _verSpace(),
        _silentDisco(),
        _verSpace(),
        _glowFestival(),
      ],
    );
  }
  
  Widget _verSpace() {
    return Container(
      height: 10,
    );
  }

  Container _posterImage() {
    return Container(
        width: _w,
        height: 400.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: new AssetImage(
                  "web/assets/rgb-feest.jpg",
                ))));
  }

  Widget _kadoTip() {
    return Container(
      width: _w,
      decoration: _boxDecoration(Colors.white, Colors.red),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 70,
                      height: 70,
                      child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Image.asset('web/assets/kado-tip.jpg'))),
                  Text(
                    'Als bijdrage voor het feest ...',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 100,
                      height: 70,
                      color: _c1,
                      child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Image.asset('web/assets/wijn.jpg'))),
                  Text(
                    ' of ',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      width: 100,
                      height: 70,
                      child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Image.asset('web/assets/bier.jpg'))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _lokatie() {
    return Center(
      child: Container(
        decoration: _boxDecoration(_c2, Colors.green),
        width: _w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Waar en hoe laat: ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            _button(_showLokatieInfo),
          ],
        ),
      ),
    );
  }

  Widget _parkeren() {
    return Center(
      child: Container(
        decoration: _boxDecoration(_c3, Colors.blue),
        width: _w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Parkeer gelegenheid: ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            _button(_showParkeerInfo),
          ],
        ),
      ),
    );
  }

  Widget _contact() {
    return Center(
      child: Container(
        decoration: _boxDecoration(_c1, Colors.red),
        width: _w,
        child: Column(
          children: <Widget>[
            Text('Nog vragen? ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text('robin.bakkerus@gmail.com ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text('06 33 000 684 ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _silentDisco() {
    return Center(
      child: Container(
        decoration: _boxDecoration(_c2, Colors.green),
        width: _w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Silent disco ... ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            _button(_showSilentDisco),
          ],
        ),
      ),
    );
  }

  Widget _glowFestival() {
    return Center(
      child: Container(
        decoration: _boxDecoration(_c3, Colors.blue),
        width: _w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Glow lichtfestival ... ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            _button(_showSilentDisco()),
          ],
        ),
      ),
    );
  }

  RaisedButton _button(VoidCallback onClick) {
    return RaisedButton(
            onPressed: onClick,
            textColor: Colors.white,
            hoverColor: Colors.red,
            child: Text(' Meer info ', style: TextStyle(fontSize: 20)),
            color: Color.fromRGBO(9, 110, 200, 0.6),
            // child: Container(
            //   decoration: _boxDecoration(Colors.lightGreen, Color(0x0066cc)),
            //   padding: const EdgeInsets.all(2.0),
            //   child: const Text(' Meer info ', style: TextStyle(fontSize: 20)),
            // ),
          );
  }

  BoxDecoration _boxDecoration(Color backCol, Color borderCol) {
    return new BoxDecoration(
      border: new Border.all(
          color: borderCol, width: 5.0, style: BorderStyle.solid),
      borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      color: backCol,
    );
  }


  _showParkeerInfo() => AppData.parkeerInfo.showParkeerInfo();
  _showLokatieInfo() => AppData.lokatieInfo.showLokatieInfo();
  _showSilentDisco() => AppData.silentDisco.showInfo();
  _showGlow() => AppData.glow.showGlowInfo();
  
//---

}