import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:news_app/exports.dart';

class AuthRepository {
  const AuthRepository(this._auth);

  final FirebaseAuth _auth;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  User? get currentUser => _auth.currentUser;

  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw AppException(message: 'Email already in use');
      } else if (e.code == 'weak-password') {
        throw AppException(message: 'Password is too weak');
      } else {
        throw AppException(message: 'An error occured. Please try again later');
      }
    }
  }

  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AppException(message: 'user not found');
      } else if (e.code == 'wrong-password') {
        throw AppException(message: 'wrong password');
      } else {
        throw AppException(message: 'An error occured. Please try again later');
      }
    }
  }

  Future<User?> signInwithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        return userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          throw AppException(
            message: 'Account exists with a different credential',
          );
        } else if (e.code == 'invalid-credential') {
          throw AppException(message: 'Invalid credential');
        }
      } catch (e) {
        throw AppException(message: 'An error occured. Please try again later');
      }
    }

    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
