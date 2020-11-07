import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
        height: 460.0,
        width: 200,
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
        Positioned(left: _screenwidthSize * 0.22, child: orangeBox)
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

class buttonGen extends StatefulWidget {
  final String text;
  double width = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  buttonGen(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.height,
      this.width});

  @override
  State createState() {
    return _buttonGen();
  }
}

//Botón genérico

class _buttonGen extends State<buttonGen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFa7ff84), //arriba
                  Color(0xFF1cbb78) //bajo
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
