import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';
import 'package:party/event/app_events.dart';

class KrasLotButton extends StatelessWidget {
  const KrasLotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const _KrasLotButton();
  }
}

class _KrasLotButton extends StatefulWidget {
  const _KrasLotButton();

  @override
  State<_KrasLotButton> createState() => _KrasLotButtonState();
}

//-----------------------------------------------------------

class _KrasLotButtonState extends State<_KrasLotButton>
    with TickerProviderStateMixin {
  // FlutterGifController? controller;
  var _inputReady = false;

  _KrasLotButtonState() {
    AppEvents.onKraslotInputReady((event) {
      setState(() {
        debugPrint("input ready");
        _inputReady = true;
      });
    });
  }

  @override
  void initState() {
    // controller = FlutterGifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !_inputReady
        ? Container(
            color: Colors.white,
          )
        : _btn();
  }

  Widget _btn() {
    return GestureDetector(
      onTap: () => _onTap(),
      child: SizedBox(
        width: 100,
        height: 80,
        child: Image.asset(
          'web/assets/prijs.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void _onTap() {
    AppEvents.fireKrasLotShowPrice();
  }
}
