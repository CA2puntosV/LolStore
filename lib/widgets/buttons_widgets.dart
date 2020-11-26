import 'dart:math';
import 'package:flutter/material.dart';

var _screenwidthSize;

class BackApp extends StatelessWidget {
  const BackApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenwidthSize = MediaQuery.of(context).size.width;
    SingleChildScrollView(
      child: Column(
        children: <Widget>[],
      ),
    );
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.8),
            end: FractionalOffset(0.0, 1.0),
            colors: [Colors.white, Color.fromRGBO(200, 200, 200, 1)]),
      ),
    );

    final orangeBox = Transform.rotate(
      angle: -pi / 1.0,
      child: Container(
        height: 510.0,
        width: 250,
        decoration: BoxDecoration(
            color: Color(0xFF38688c),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(120.0),
                topLeft: Radius.circular(120.0))),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(right: _screenwidthSize * 0.10, child: orangeBox)
      ],
    );
  }
}

class TopScreen extends StatelessWidget {
  const TopScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 85, 23, 1),
      ),
      body: BackApp(),
    );
  }
}
