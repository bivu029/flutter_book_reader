import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/usecases/usecases.dart';
import 'package:bookbazar/src/core/utils/typedef.dart';

import 'package:bookbazar/src/features/auth/domain/repositories/repositories.dart';

class JwtUseCase extends UsecasesWithOutParams<User?> {
  final AuthRepository _authRepository;

  JwtUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;
  @override
  ResultFuture<User?> call() {
    return _authRepository.jwtToken();
  }
}
