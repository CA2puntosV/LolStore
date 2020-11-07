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
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xFF38688c),
              ),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://assets.stickpng.com/images/580b57fcd9996e24bc43c2ee.png'),
                  width: 160,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Wrap(
              children: productRepo
                  .getAll()
                  .map(
                    (product) => ProductWidget(product: product),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
