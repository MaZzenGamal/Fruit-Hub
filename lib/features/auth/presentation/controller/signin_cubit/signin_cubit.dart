import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;


  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SigninLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (l) => emit(SigninErrorState(l.message)),
      (r) => emit(SigninSuccessState(r)),
    );
  }

  Future<void> signInWithGoogle() async{
    emit(SigninLoadingState());
    final result = await authRepo.signInWithGoogle();
    result.fold(
      (l) => emit(SigninErrorState(l.message)),
      (r) => emit(SigninSuccessState(r)),
    );
  }

  Future<void> signInWithFacebook() async{
    emit(SigninLoadingState());
    final result = await authRepo.signInWithFacebook();
    result.fold(
      (l) => emit(SigninErrorState(l.message)),
      (r) => emit(SigninSuccessState(r)),
    );
  }
}
