import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class Authentication {
  void signOut(String email, String password) async {
    await auth.signOut();
  }
}
