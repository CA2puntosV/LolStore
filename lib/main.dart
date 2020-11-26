import 'package:flutter/material.dart';
import 'package:tienda_lol/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LolStore',
      routes: getAplicationRoutes(),
      initialRoute: '/',
    );
  }
}
