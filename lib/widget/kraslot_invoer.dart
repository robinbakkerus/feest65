import 'package:flutter/material.dart';
import 'package:party/event/app_events.dart';

class KrasLotInvoer extends StatelessWidget {
  const KrasLotInvoer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _KrasLotInvoer();
  }
}

class _KrasLotInvoer extends StatefulWidget {
  const _KrasLotInvoer();

  @override
  State<_KrasLotInvoer> createState() => _KrasLotInvoerState();
}

//-----------------------------------------------------------

class _KrasLotInvoerState extends State<_KrasLotInvoer> {
  var _inputVisible = false;

  _KrasLotInvoerState() {
    AppEvents.onKraslotVisible((event) {
      setState(() {
        _inputVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: null,
      child: Center(
        child: SizedBox(
          width: 100,
          child: !_inputVisible
              ? Container(
                  color: Colors.white,
                )
              : TextField(
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                  onChanged: (text) {
                    _onChanged(text);
                  },
                  decoration: const InputDecoration(
                    // border: OutlineInputBorder(),
                    hintText: 'nr',
                  ),
                ),
        ),
      ),
    );
  }

  _onChanged(String text) {
    if (text.length > 3) {
      AppEvents.fireKraslotInputReady();
    }
  }
}
