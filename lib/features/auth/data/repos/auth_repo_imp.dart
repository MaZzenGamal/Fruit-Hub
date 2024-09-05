import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/errors/failure.dart';
import 'package:fruit_hub/core/services/firebase_auth_services.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

import '../../domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImp({required this.firebaseAuthServices});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      print(user);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'لقد حدث خطأ غير متوقع، حاول مرة اخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.signInWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'لقد حدث خطأ غير متوقع، حاول مرة اخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.signInWithGoogle: ${e.toString()}');
      return Left(
        ServerFailure(
          'لقد حدث خطأ غير متوقع، حاول مرة اخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImp.signInWithFacebook: ${e.toString()}');
      return Left(
        ServerFailure(
          'لقد حدث خطأ غير متوقع، حاول مرة اخرى',
        ),
      );
    }
  }
}
