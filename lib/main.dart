import 'package:flutter/material.dart';
import 'package:party/widget/poster.dart';
// import 'widget/sliver.dart';

void main() => runApp(Hummingbird());

class Hummingbird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '9 november Silent disco feest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyWebsite(),
    );
  }
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('9 november RGB feest'),
        centerTitle: true,
      ),
      body: Container(
        child: Poster()),
    );
  }
}
