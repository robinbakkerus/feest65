import 'package:flutter/material.dart';
import 'package:party/widget/armenloterij.dart';
import 'package:party/widget/poster.dart';

// void main() => runApp(Feest65App());
void main() => runApp(ArmenLoterijApp());

class Feest65App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '9 november Silent disco feest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: _Feest65App(),
    );
  }
}

class _Feest65App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('9 november Silent disco feest!!'),
        centerTitle: true,
      ),
      body: Container(child: Poster()),
    );
  }
}

//--------------

class ArmenLoterijApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Armenloterij',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Armenloterij(),
    );
  }
}
