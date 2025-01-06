part of 'login_cubit.dart';

class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginSuccess extends LoginState {
  final dynamic data;
  LoginSuccess(this.data);
}
final class LoginFailure extends LoginState {
  final String error;
  LoginFailure(this.error);
}
