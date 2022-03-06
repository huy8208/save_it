import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirebaseAuthController extends GetxController {
  static final FirebaseAuth _userCredentials = FirebaseAuth.instance;
  RxBool isAuthenticated = false.obs;
  late Future<UserCredential> currentUser;
}
