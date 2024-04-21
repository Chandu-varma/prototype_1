import 'package:firebase_auth/firebase_auth.dart';

class FireBase {
  final firebase = FirebaseAuth.instance;

 Future<void> register(String email, String password) async{
   await firebase.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> login(String email, String password) async {
   await firebase.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
