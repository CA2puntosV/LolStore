import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'package:tienda_lol/screens/shop_screen.dart';
import 'carrito_screen.dart';

class NavigatorScreen extends StatefulWidget {
  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Tienda',
          baseStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 30.0,
          ),
          colorLineSelected: Color(0xFF38688c),
        ),
        ShopScreen()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Carrito',
          baseStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 28.0,
          ),
          colorLineSelected: Color(0xFF38688c),
        ),
        CarScreen()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Color(0xFF38688c),
      screens: items,
      slidePercent: 50.0,
      verticalScalePercent: 90.0,
      contentCornerRadius: 40.0,
      backgroundMenu: DecorationImage(
          image: NetworkImage(
              'https://img.freepik.com/free-vector/retro-abstract-ornamental-flowers-background_23-2148370307.jpg?size=626&ext=jpg'),
          fit: BoxFit.cover),
    );
  }
}
