import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreProvider {
  FireStoreProvider();
  final FirebaseFirestore db = FirebaseFirestore.instance;
}
