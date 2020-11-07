import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tienda_lol/routes/routes.dart';
import 'package:tienda_lol/user/bloc/bloc_user.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LolStore',
        routes: getAplicationRoutes(),
        initialRoute: '/',
      ),
      bloc: UserBloc(),
    );
  }
}
