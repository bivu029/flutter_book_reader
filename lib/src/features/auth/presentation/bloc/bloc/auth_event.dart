part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class GooglesignInButtonEvent extends AuthEvent {}

class ServercallEvent extends AuthEvent {
  final User? authModel;
  const ServercallEvent({required this.authModel});
}

class JwtIsExistEvent extends AuthEvent {}
