import 'package:flutter/material.dart';
import 'package:tienda_lol/screens/home_page.dart';
import 'package:tienda_lol/screens/login.dart';
import 'package:tienda_lol/screens/register_page.dart';


Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
  };
}