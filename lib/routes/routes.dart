import 'package:flutter/material.dart';
import 'package:tienda_lol/screens/bottom_screen.dart';
import 'package:tienda_lol/screens/carrito_screen.dart';
import 'package:tienda_lol/screens/home_page.dart';
import 'package:tienda_lol/screens/navigator_screen.dart';
import 'package:tienda_lol/screens/register_page.dart';
import 'package:tienda_lol/screens/shop_screen.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'register': (BuildContext context) => RegisterPage(),
    'shop': (BuildContext context) => ShopScreen(),
    'nav': (BuildContext context) => NavigatorScreen(),
    'Car': (BuildContext context) => CarScreen(),
  };
}
