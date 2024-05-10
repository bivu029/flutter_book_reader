import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';


import 'package:bookbazar/src/features/auth/domain/usecases/jwt.usecase.dart';

import 'package:bookbazar/src/features/auth/domain/usecases/server_sign.dart';

import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.jwtUseCase,
    required this.serverSignCase,
  }) : super(AuthInitial()) {
    on<ServercallEvent>(servesign);
    on<JwtIsExistEvent>(isJwtExist);
  }

  final ServerSignCase serverSignCase;
  final JwtUseCase jwtUseCase;

  FutureOr<void> servesign(
      ServercallEvent event, Emitter<AuthState> emit) async {
   

    emit(AuthLoadingState());
    final serve = await serverSignCase(event.authModel );

    serve.fold((fail) {
      emit(AuthErrorState(
          message: fail.message, statuscode: fail.statuscode.toString()));
    }, (entity) => emit(AuthSucessState(authEntity: entity)));
  }

  FutureOr<void> isJwtExist(
      JwtIsExistEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    final data = await jwtUseCase();
    data.fold(
        (fail) => emit(AuthErrorState(
            message: fail.message,
            statuscode: fail.statuscode.toString())), (entity) {
      emit(JwtSucess(authEntity: entity));
    });
  }
}
