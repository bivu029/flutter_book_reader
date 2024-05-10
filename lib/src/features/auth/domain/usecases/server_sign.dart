import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/usecases/usecases.dart';
import 'package:bookbazar/src/core/utils/typedef.dart';

import 'package:bookbazar/src/features/auth/domain/repositories/repositories.dart';


class ServerSignCase extends UsecasesWithParams<User,User> { //first authentity is return type, second is params
  final AuthRepository _authRepository;

  ServerSignCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  ResultFuture<User> call(User? params) {
  return  _authRepository.serversign(params);
  }
}


