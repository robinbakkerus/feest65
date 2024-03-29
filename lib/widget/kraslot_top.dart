import 'dart:math';

import 'package:flutter/material.dart';
import 'package:party/event/app_events.dart';

class KrasLotTop extends StatelessWidget {
  const KrasLotTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const _KrasLotTop();
  }
}

class _KrasLotTop extends StatefulWidget {
  const _KrasLotTop();

  @override
  State<_KrasLotTop> createState() => _KrasLotTopState();
}

//====================================================

class _KrasLotTopState extends State<_KrasLotTop> {
  final _items = List<KrasItem>.generate(1000, (int index) => KrasItem(index),
      growable: false);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: ((details) => _handleSwipe()),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 300.0,
        height: 100.0,
        child: _itemsArray(),
      ),
    );
  }

  Widget _itemsArray() {
    return GridView.count(
      crossAxisCount: 50,
      children: _buildArray(),
    );
  }

  List<Widget> _buildArray() {
    final items = List.generate(
        1000,
        (i) => Opacity(
              opacity: _getOpacity(i),
              child: Container(
                width: 1.0,
                height: 1.0,
                color: Colors.grey[900],
                // child: const Text("a"),
              ),
            ));
    return items;
  }

  double _getOpacity(int idx) {
    KrasItem item = _items[idx];
    return item.selected ? 0.0 : 1.0;
  }

  void _handleSwipe() {
    for (var i = 0; i < 10; i++) {
      var unselected =
          _items.where((element) => element.selected == false).toList();
      var len = unselected.length;

      if (len > 2) {
        int pickIndex = Random().nextInt(unselected.length - 1);
        KrasItem item = unselected[pickIndex];
        item.selected = true;
      } else if (len < 50) {
        AppEvents.fireKraslotVisible();
      }
    }

    AppEvents.fireKraslotSwipe();

    setState(() {});
  }
}

class KrasItem {
  int idx = 0;
  bool selected = false;

  KrasItem(this.idx);
}
