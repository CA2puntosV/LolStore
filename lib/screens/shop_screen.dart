import 'package:flutter/material.dart';
import 'package:tienda_lol/data/product_rep.dart';
import 'package:tienda_lol/widgets/product_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({
    Key key,
  }) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final productRepo = ProductRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lol Store'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
