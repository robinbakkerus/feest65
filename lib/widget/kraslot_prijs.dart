import 'package:flutter/material.dart';
import 'package:party/event/app_events.dart';

class KrasLotPrijs extends StatelessWidget {
  const KrasLotPrijs({super.key});

  @override
  Widget build(BuildContext context) {
    return const _KrasLotPrijs();
  }
}

class _KrasLotPrijs extends StatefulWidget {
  const _KrasLotPrijs();

  @override
  State<_KrasLotPrijs> createState() => _KrasLotPrijsState();
}

//-----------------------------------------------------------

class _KrasLotPrijsState extends State<_KrasLotPrijs>
    with TickerProviderStateMixin {
  var _showPrice = false;

  _KrasLotPrijsState() {
    AppEvents.onKrasLotShowPrice((event) {
      setState(() {
        debugPrint("show price");
        _showPrice = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !_showPrice ? Container() : _column();
  }

  Widget _column() {
    return Column(
      children: [_gif(), _prijs()],
    );
  }

  Widget _prijs() {
    return Center(
      child: Text(
        '€ 2022',
        style:
            TextStyle(color: Colors.blue[900], decoration: TextDecoration.none),
      ),
    );
  }

  Widget _gif() {
    return SizedBox(
      width: 400,
      height: 300,
      child: Image.asset(
        'web/assets/gewonnen.gif',
        fit: BoxFit.contain,
      ),
    );
  }
}
