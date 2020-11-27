import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tienda_lol/widgets/buttons_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackApp(),
          bodypage(),
        ],
      ),
    );
  }

  Widget bodypage() {
    bool _checked = false;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/LolStoreIcon.png'),
                  height: 130,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'INICIAR SESIÓN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 220,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(FontAwesomeIcons.userAlt),
                  labelText: 'Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  isDense: false,
                  contentPadding: EdgeInsets.all(10),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 220,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(FontAwesomeIcons.unlockAlt),
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  isDense: false,
                  contentPadding: EdgeInsets.all(10),
                ),
                onChanged: (value) {},
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Checkbox(
                  value: _checked,
                  onChanged: (bool value) {
                    setState(() {
                      _checked = value;
                    });
                  },
                ),
                Text(
                  'Recordar mi contraseña',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                child: GestureDetector(
                    child: Text(
                      "¿Tienes problemas con tus credenciales?",
                      style: TextStyle(
                        color: Color(0xffc79f3f),
                      ),
                    ),
                    onTap: () {
                      print('Enviar a la pantalla de problemas');
                      //Navigator.pushNamed(context, '');
                      //TODO crear pantalla de problemas con crendenciales
                    })),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text(
                'INGRESAR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              color: Color(0xffc79f3f),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.pushNamed(context, 'shop');
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                child: RichText(
                  text: TextSpan(
                    text: '¿No tienes cuenta?',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ¡Registrate!',
                        style: TextStyle(
                          color: Color(0xffc79f3f),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  print('Redireccionar a la pantalla de registro');
                  Navigator.pushNamed(context, 'register');
                  //TODO reorganizar pantalla shop
                },
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Copyright',
                  style: TextStyle(
                      color: Color(0xff92918f), fontWeight: FontWeight.bold),
                ),
                Text(
                  '© Todos los derechos reservados 2020',
                  style: TextStyle(color: Color(0xff8f8d8e)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
