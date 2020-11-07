import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Iniciar Sesión',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.network(
              'https://cdn.iconscout.com/icon/free/png-256/league-of-legends-555171.png',
              height: 200.0,
            ),
            SizedBox(height: 15),
            _userTextField(),
            SizedBox(height: 15),
            _passwordTextFiel(),
            SizedBox(height: 20),
            FlatButton(
              child: Text('Iniciar sesion'),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.pushNamed(context, 'shop');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo Electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  _passwordTextFiel() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }
}
