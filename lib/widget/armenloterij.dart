import 'package:flutter/material.dart';
// import 'package:party/event/app_events.dart';
import 'package:party/utils/context.dart';
import 'kraslot.dart';
import 'kraslot_invoer.dart';
import 'kraslot_button.dart';
import 'kraslot_prijs.dart';

class Armenloterij extends StatelessWidget {
  const Armenloterij({super.key});

  @override
  Widget build(BuildContext context) {
    AppData.screenWidth = MediaQuery.of(context).size.width;
    AppData.srceenHeight = MediaQuery.of(context).size.height;

    List<Widget> widgets = [
      _image("web/assets/kraslot0.jpg", 500),
      _image("web/assets/kraslot1.jpg", 100),
      const KrasLot(),
      _image("web/assets/kraslot2.jpg", 100),
      _verSpace(),
      const KrasLotInvoer(),
      _verSpace(),
      _image("web/assets/kraslot3.jpg", 100),
      const KrasLotButton(),
      _verSpace(),
      const KrasLotPrijs(),
      _verSpace(),
      Container(
        color: Colors.white,
        height: 500,
      )
    ];

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, idx) {
              return widgets[idx];
            }),
      ),
    );
  }

  Widget _verSpace() {
    return Container(
      color: Colors.white,
      height: 10,
    );
  }

  _w() {
    if (AppData.screenWidth > 500.0) {
      return 500.0;
    } else {
      return AppData.screenWidth;
    }
  }

  Widget _image(String filename, double h) {
    return Center(
      child: Container(
          width: _w(),
          height: h,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    filename,
                  )))),
    );
  }
}
