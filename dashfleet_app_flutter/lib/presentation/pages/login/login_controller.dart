// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var receivedID = '';
  FirebaseAuth auth = FirebaseAuth.instance;

  loginWithCredentials(String number, String code) async {
    await auth.verifyPhoneNumber(
      phoneNumber: "+1$number",
      verificationCompleted: (PhoneAuthCredential credential) async {
        auth.signInWithCredential(credential).then(
              (value) => print('Logged In Successfully'),
            );
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        receivedID = verificationId;
        print("receivedID $receivedID");
        sigIn(code);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("TimeOut");
      },
    );
  }

  sigIn(String code) {
    try {
      auth
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: receivedID, smsCode: code))
          .then((value) {
        if (value.user != null) {
          print("User: ${value.user}");
          Get.toNamed("/");
        }
      });
    } catch (e) {
      Get.snackbar("Error", "Ivalid OTP", backgroundColor: Colors.red);
    }
  }
}
