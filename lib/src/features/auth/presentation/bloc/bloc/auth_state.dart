part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthErrorState extends AuthState {
  final String? message;
  final String? statuscode;

  const AuthErrorState({required this.message, required this.statuscode});
}

class AuthSucessState extends AuthState {
  final User authEntity;

  const AuthSucessState({required this.authEntity});
}

class JwtSucess extends AuthState {
  final User? authEntity;

 const JwtSucess({required this.authEntity});
}
