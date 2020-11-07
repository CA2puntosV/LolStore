import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tienda_lol/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  get getAuthStatus => null;

  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {}
}
