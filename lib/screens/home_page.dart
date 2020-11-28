import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tienda_lol/widgets/buttons_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _keyForm = GlobalKey<FormState>();
  bool _passwordVisible;
  bool _checked = false;
  @override
  void initState() {
    _passwordVisible = false;
  }

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
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/Logo.png'),
                    height: 150,
                  )
                ],
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
                  validator: (valor) {
                    if (valor.isEmpty) {
                      return "Usuario Vacío";
                    }
                    if (valor != 'CA2' && valor != 'DmG4mer') {
                      return "Nombre de usuario Inválido.";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(FontAwesomeIcons.userAlt),
                    hintText: 'Usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    isDense: false,
                    contentPadding: EdgeInsets.all(10),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 220,
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Espacio de Contraseña Vacío";
                    }
                    if (value != 'LilCA2' && value != 'Anita lava la tina') {
                      return "Contraseña incorrecta";
                    }
                    return null;
                  },
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    prefixIcon: Icon(FontAwesomeIcons.unlockAlt),
                    hintText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
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
                height: 10,
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
                height: 15,
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
                  if (_keyForm.currentState.validate()) {
                    print("Validación Exitosa");
                    Navigator.pushNamed(context, 'shop');
                  } else {
                    print("Error");
                  }
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
                  },
                ),
              ),
              SizedBox(
                height: 70,
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
      ),
    );
  }
}
