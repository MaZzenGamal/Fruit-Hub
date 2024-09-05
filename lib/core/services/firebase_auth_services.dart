import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../errors/exceptions.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()} and code: ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الكلمة المرور ضعيفة جداً');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الإلكتروني مستخدم مسبقاً');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'البريد الإلكتروني غير صالح');
      } else {
        throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthServices.signInWithEmailAndPassword: ${e.toString()} and code: ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'تأكد من البريد الإلكتروني و كلمة المرور');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'تأكد من البريد الإلكتروني و كلمة المرور');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(
            message: 'تأكد من البريد الإلكتروني و كلمة المرور');
      } else if (e.code == 'invalid-email') {
        throw CustomException(
            message: 'تأكد من البريد الإلكتروني و كلمة المرور');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else {
        throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthServices.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }


  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
