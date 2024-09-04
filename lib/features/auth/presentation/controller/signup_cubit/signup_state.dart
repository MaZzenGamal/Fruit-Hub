part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitialState extends SignupState {}

final class SignupLoadingState extends SignupState {}

final class SignupSuccessState extends SignupState {
  final UserEntity userEntity;
  SignupSuccessState(this.userEntity);
}

final class SignupErrorState extends SignupState {
  final String message;
  SignupErrorState(this.message);
}