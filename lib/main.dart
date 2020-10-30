import 'package:flutter/material.dart';
import 'package:tienda_lol/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
      },
      initialRoute: '/',
    );
  }
}
