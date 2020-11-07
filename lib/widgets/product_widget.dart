import 'package:tienda_lol/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  final Product product;

  ProductWidget({
    this.product,
  });

  @override
  ProductWidgetState createState() => ProductWidgetState();
}

class ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Figura coleccionable',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              child: Image.network(
                widget.product.photoUrl,
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Personaje: ${widget.product.name}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Precio: ${widget.product.price}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
