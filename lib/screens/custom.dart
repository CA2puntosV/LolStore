import 'package:flutter/material.dart';

class CustomTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/akali.png'),
            width: 190,
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffc79f3f), width: 1.0))),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Akali KD/A Figura 29 CM',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(' \$ 100.000',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ],
    );
  }
}

class CustomBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('CACTERISTICAS:',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffc79f3f))),
        SizedBox(
          height: 10,
        ),
        Text("""
- Máscara K / DA Akali desmontable
- Blacklight (3 pilas AAA no incluidas)
- Acentos habilitados para luz negra""",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ],
    );
  }
}

class CustomTop1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/jinx.png'),
            width: 300,
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffc79f3f), width: 1.0))),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Jinx',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(' \$ 85.000 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ],
    );
  }
}

class CustomBot1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('MEDIDAS APROXIMADAS:',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffc79f3f))),
        SizedBox(
          height: 10,
        ),
        Text("""
- Height: 10.6 in / 26.9 cm
- Width: 5.6 in / 14.2 cm """,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ],
    );
  }
}

class CustomTop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/Jhin.png'),
            width: 155,
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffc79f3f), width: 1.0))),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Jhin, el virtuoso',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(' \$ 94.444 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ],
    );
  }
}

class CustomBot2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('MEDIDAS APROXIMADAS:',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffc79f3f))),
        SizedBox(
          height: 10,
        ),
        Text("""
-Height: 10.4 in / 26.3 cm
-Width: 7.8 in / 19.8 cm
        Materials: PVC/ABS """,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ],
    );
  }
}

class CustomTop3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/mystery.png'),
            width: 150,
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffc79f3f), width: 1.0))),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Figura Misteriosa',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(' \$ 50.000 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ],
    );
  }
}

class CustomBot3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('DESCRIPCION:',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffc79f3f))),
        SizedBox(
          height: 5,
        ),
        Text("""
Mystery Figure (Serie 3) le proporciona una figura de Serie 3 al azar.
NO INCLUYE: Bastón de Dios Jax XL, Ryze, Neeko.""",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
