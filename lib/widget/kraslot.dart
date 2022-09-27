import 'package:flutter/material.dart';
import 'package:party/widget/kraslot_top.dart';

class KrasLot extends StatelessWidget {
  const KrasLot({super.key});

  @override
  Widget build(BuildContext context) {
    return _KrasLot();
  }
}

class _KrasLot extends StatefulWidget {
  const _KrasLot();

  @override
  State<_KrasLot> createState() => _KrasLotState();
}

class _KrasLotState extends State<_KrasLot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _krasStack(),
    );
  }

  Widget _krasStack() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        _krasNumber(),
        _krasTop(),
      ],
    );
  }

  Widget _krasNumber() {
    return Center(
      child: Text(
        '1153',
        style:
            TextStyle(color: Colors.blue[900], decoration: TextDecoration.none),
      ),
    );
  }

  Widget _krasTop() {
    return KrasLotTop();
  }
}
