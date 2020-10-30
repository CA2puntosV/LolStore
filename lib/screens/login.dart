import 'dart:math';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [Colors.white, Color.fromRGBO(200, 200, 200, 1)]),
      ),
    );

    final figLog = Transform.rotate(
      angle: pi / 1.0,
      child: Container(
        height: 390,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xFF38688c),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(250.0),
            topLeft: Radius.circular(250.0),
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(top: -90.0, left: 50.0, right: 50.0, child: figLog)
      ],
    );
  }
}
