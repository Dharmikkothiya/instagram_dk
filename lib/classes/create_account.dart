import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

String acountId = "";

class AuthMethods {
  final FirebaseFirestore accounts = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> createAccount({
    required String email,
    required String password,
    required String username,
    required String name,
  }) async {
    UserCredential createAccount = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    print(createAccount.user!.uid);
    String userId = createAccount.user!.uid;
    print(userId);
    acountId = userId;
    accounts.collection("profiledata").doc(userId).set({
      "user_id": userId,
      "username": username,
      "email": email,
      "password_hash": password,
      "full_name": name,
      "bio": "",
      "profile_pic": "",
      "created_at": FieldValue.serverTimestamp(),
      "updated_at": FieldValue.serverTimestamp(),
    });
  }

  Future<void> singOut() async {
    await auth.signOut();
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> updateAccount({
    required String email,
    required String password,
    required String username,
    String? bio,
    String? web,
    String? gender,
    String? phoneNumber,
    required String name,
  }) async {
    UserCredential createAccount =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    print(createAccount.user!.uid);
    String userId = createAccount.user!.uid;
    print(userId);
    acountId = userId;

    accounts.collection("profiledata").doc(userId).update({
      "user_id": userId,
      "username": username,
      "email": email,
      "password_hash": password,
      "full_name": name,
      "bio": bio,
      "web": web,
      "gender": gender,
      "phone number": phoneNumber,
      "profile_pic": "",
    });
  }
}
