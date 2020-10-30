import 'package:flutter/material.dart';
import 'package:tienda_lol/routes/routes.dart';
import 'package:tienda_lol/screens/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getAplicationRoutes(),
      initialRoute: '/',
    );
  }
}
