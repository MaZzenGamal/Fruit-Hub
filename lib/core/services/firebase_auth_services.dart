import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

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
      }else if (e.code == 'network-request-failed'){
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      }else if (e.code == 'invalid-email') {
        throw CustomException(message: 'البريد الإلكتروني غير صالح');
      } else {
        throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'لقد حدث خطأ غير متوقع، حاول مرة اخرى');
    }
  }
}
