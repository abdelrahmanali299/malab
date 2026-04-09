part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final PlayerModel player;

  AuthSuccess(this.player);
}

class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);
}
