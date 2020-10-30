import 'package:flutter/material.dart';
import 'package:tienda_lol/screens/register_page.dart';
import 'package:tienda_lol/widgets/buttons_widgets.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackApp(),
          bodypage(),
        ],
      ),
    );
  }

  Widget bodypage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Iniciar sesion'),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                 Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Registrate'),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
