import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xFF38688c),
       title: Text('LoLStore - Register'),
       
     ),
     body: Container(

     ),
    );
  }
}