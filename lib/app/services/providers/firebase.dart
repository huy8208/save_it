import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/state_manager.dart';
import 'package:save_it/app/core/utils/snackBarError.dart';
import 'package:save_it/app/core/utils/snackBarSuccess.dart';

class FireBaseProvider {
  static final FirebaseAuth _userCredentials = FirebaseAuth.instance;
  late UserCredential currentUser;

  Future<String> signIn(String email, String password) async {
    try {
      currentUser = await _userCredentials.signInWithCredential(
        EmailAuthProvider.credential(email: email, password: password),
      );
      successSnackBar('Sign-in success!');
      // isAuthenticated.value = true;
      return 'loginedSuccessful';
    } on FirebaseAuthException catch (firebaseError) {
      errorSnackBar(firebaseError.toString());
      return 'FirebaseAuthException caughted: Login failed';
    }
  }

  Future<String> register(String email, String password) async {
    try {
      currentUser = await _userCredentials.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      successSnackBar('Register success!');
      return 'RegistedSuccessful';
    } on FirebaseAuthException catch (firebaseError) {
      errorSnackBar(firebaseError.toString());
      return 'FirebaseAuthException caughted: Registration failed';
    }
  }

  Future<void> signOut() async {
    try {
      await _userCredentials.signOut();
      // isAuthenticated.value = false;
      //restart the app
      // Restart.restartApp();
    } on FirebaseAuthException catch (firebaseError) {
      errorSnackBar(firebaseError.toString());
      print(firebaseError.toString());
    } catch (e) {
      print(e.toString());
    }
  }

  //get current user id
  String getCurrentUID() {
    return _userCredentials.currentUser!.uid;
  }

//get current user email
  String getCurrentEmail() {
    return _userCredentials.currentUser!.email.toString();
  }

//get current user
  Future<User> getCurrentUser() async {
    return _userCredentials.currentUser!;
  }

//change password of current user
  Future<void> changePassword(String newPassword) async {
    return _userCredentials.currentUser!.updatePassword(newPassword);
  }
}
