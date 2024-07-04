import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(String name, String email, password) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    authResult.user!.updateDisplayName(name);
    authResult.user!.sendEmailVerification();
    return authResult;
  }

  Future<UserCredential> signIn(String email, String password) async {
    final authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return authResult;
  }

  User? getUser() {
    User? user = _auth.currentUser;
    return user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Stream<User?> authState() {
    final user = _auth.authStateChanges();
    return user;
  }

  Future<void> changePassword(
      String email, String oldPassword, String newPassword) async {
    AuthCredential credential =
        EmailAuthProvider.credential(email: email, password: oldPassword);

    await _auth.currentUser!.reauthenticateWithCredential(credential);

    _auth.currentUser!.updatePassword(newPassword);
  }
}
