import 'package:flutter/material.dart';
import 'package:tienda_lol/widgets/buttons_widgets.dart';

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
       backgroundColor: Color(0xFF38688c),
       title: Text('LoLStore - Login', ),
     ),
        body: Container(
       
     ),
   );
    
  }
}
