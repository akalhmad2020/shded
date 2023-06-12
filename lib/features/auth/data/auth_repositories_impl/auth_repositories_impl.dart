

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shded/features/auth/data/remote_auth/remote_auth_interface.dart';
import 'package:shded/features/auth/domain/entity/person.dart';
import 'package:shded/features/auth/domain/repositiries_interfaces/repository_auth_interface.dart';

class AuthRepositoriesImpl implements AuthRepoInter {



  @override
  Future<void> sendPhoneNumber(String phoneNumber) async {
    await  FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async{
          await FirebaseAuth.instance.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException f){},
        codeSent: (String verificationId , int? idToken) async {
          SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
          sharedPreferences.setString('vId', verificationId);
        },
        timeout: const Duration(seconds: 40),
        codeAutoRetrievalTimeout: (String auto){});


   }

}