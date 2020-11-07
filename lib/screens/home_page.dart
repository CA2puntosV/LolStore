//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:generic_bloc_provider/generic_bloc_provider.dart';
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
          signInGoogleUI(),
          fontlog(),
        ],
      ),
    );
  }

  Widget bodypage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Iniciar sesion'),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Registrate'),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget signInGoogleUI() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenidos\n a LolStore',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget fontlog() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://cdn.iconscout.com/icon/free/png-256/league-of-legends-555171.png',
                width: 200,
                height: 200,
              ),
            ],
          )
        ],
      ),
    );
  }

//   Widget buttonGeneric() {
//     UserBloc userBloc;
//     userBloc = BlocProvider.of(context);
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 370,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               buttonGen(
//                 text: "Inicia sesión con Gmail",
//                 onPressed: () {
//                   userBloc.signIn().then((FirebaseUser user) =>
//                       print("El usuario es ${user.displayName}"));
//                 },
//                 width: 300.0,
//                 height: 50.0,
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
}
