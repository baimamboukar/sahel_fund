import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth _firebaseAuth;
  Authentication(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String> loginUser({String mail, String pass}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: mail, password: pass);
      return "You are signed in";
    } on FirebaseAuthException catch (err) {
      print(err.message);
      return err.message;
    }
  }

  Future<String> signupUser({String mail, String pass}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: mail, password: pass);
      return "You are signed in";
    } on FirebaseAuthException catch (err) {
      return err.message;
    }
  }

  Future<String> logoutUser() async {
    try {
      await _firebaseAuth.signOut();
      return "Signed Out";
    } on FirebaseAuthException catch (err) {
      return err.message;
    }
  }
}
