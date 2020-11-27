import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key key,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Text(
                      'REGISTRO',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc79f3f),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 290,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(FontAwesomeIcons.userAlt),
                      labelText: 'Usuario',
                      border: OutlineInputBorder(),
                      isDense: false,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'INFORMACIÓN DE LA CUENTA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc79f3f),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 290,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(FontAwesomeIcons.mailBulk),
                      labelText: 'Correo Electronico',
                      hintText: 'ejemplo@correo.com',
                      border: OutlineInputBorder(),
                      isDense: false,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 290,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(FontAwesomeIcons.unlockAlt),
                      hintText: 'Correo',
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      isDense: false,
                      contentPadding: EdgeInsets.all(10),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 26.2,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      RaisedButton(
                        child: Text(
                          'VOLVER',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        color: Color(0xffc79f3f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        child: Text(
                          'INGRESAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        color: Color(0xffc79f3f),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'shop');
                        },
                      ),
                    ],
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF38688c), Color(0xFF131212)]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
