part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoadingState extends SigninState {}

final class SigninSuccessState extends SigninState {
  final UserEntity userEntity;
  SigninSuccessState(this.userEntity);
}

final class SigninErrorState extends SigninState {
  final String message;
  SigninErrorState(this.message);
}