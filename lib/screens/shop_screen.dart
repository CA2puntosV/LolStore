import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:tienda_lol/screens/custom.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({
    Key key,
  }) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          SlimyCard(
            color: Color(0xFF38688c),
            width: 250,
            topCardWidget: CustomTop(),
            bottomCardWidget: CustomBot(),
            topCardHeight: 300,
            bottomCardHeight: 100,
          ),
          ////////////////////////////
          SizedBox(height: 30),
          SlimyCard(
            color: Color(0xFF38688c),
            width: 250,
            topCardWidget: CustomTop1(),
            bottomCardWidget: CustomBot1(),
            topCardHeight: 300,
            bottomCardHeight: 100,
          ),
          ////////////////////////////
          SizedBox(height: 30),
          SlimyCard(
            color: Color(0xFF38688c),
            width: 250,
            topCardWidget: CustomTop2(),
            bottomCardWidget: CustomBot2(),
            topCardHeight: 300,
            bottomCardHeight: 100,
          ),
          ////////////////////////////
          SizedBox(height: 30),
          SlimyCard(
            color: Color(0xFF38688c),
            width: 250,
            topCardWidget: CustomTop3(),
            bottomCardWidget: CustomBot3(),
            topCardHeight: 300,
            bottomCardHeight: 100,
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF38688c),
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(FontAwesomeIcons.home, size: 30),
          Icon(FontAwesomeIcons.shoppingCart, size: 30),
          Icon(FontAwesomeIcons.star, size: 30),
        ],
        // onTap: (tabIndex) {
        //   print(tabIndex);
        //   if (tabIndex == 0) {
        //     Navigator.of(context).pushNamed('nav');
        //   }
        //   if (tabIndex == 1) {
        //     Navigator.of(context).pushNamed(
        //       'Car',
        //     );
        //   }
        // },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Akali KD/A Figura 29 CM',
                        style: TextStyle(color: Color(0xFF38688c)),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('\$ 100.000', style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Text('Cantidad: 1'),
                      Image(
                        image: AssetImage('assets/akali.png'),
                        width: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Jinx Figura 29 CM',
                        style: TextStyle(color: Color(0xFF38688c)),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('\$ 85.000', style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Text('Cantidad: 1'),
                      Image(
                        image: AssetImage('assets/jinx.png'),
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Total: ',
                        style: TextStyle(
                            color: Color(0xFF484848),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ 185.000',
                        style: TextStyle(color: Color(0xFF484848)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text(
                      'Ordenar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    color: Color(0xffc79f3f),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        },
        child: Icon(FontAwesomeIcons.shoppingCart),
      ),
    );
  }
}
