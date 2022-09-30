import 'package:flutter/material.dart';
import 'package:party/widget/armenloterij.dart';
import 'package:party/widget/poster.dart';

// void main() => runApp(Feest65App());
void main() => runApp(const ArmenLoterijApp());

class Feest65App extends StatelessWidget {
  const Feest65App({super.key});

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
        title: const Text('9 november Silent disco feest!!'),
        centerTitle: true,
      ),
      body: const Poster(),
    );
  }
}

//--------------

class ArmenLoterijApp extends StatelessWidget {
  const ArmenLoterijApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Armenloterij',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Armenloterij(),
    );
  }
}
