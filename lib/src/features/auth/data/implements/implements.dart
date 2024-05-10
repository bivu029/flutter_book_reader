import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/error/failure.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/utils/typedef.dart';

import 'package:bookbazar/src/features/auth/data/sources/auth_local.data.dart';

import 'package:dartz/dartz.dart';

import '../sources/auth_remote.dart';
import '../../domain/repositories/repositories.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataImp localDataImp;
  AuthRepositoryImp(
      {required this.remoteDataSource, required this.localDataImp});

  @override
  ResultFuture<User> serversign(User? authEntity) async {
    try {
      // final authmodel = AuthModel(
      //     email: authEntity!.email,
      //     idToken: authEntity.idToken,
      //     name: authEntity.name,
      //     photoUrl: authEntity.photoUrl);
      final user = await remoteDataSource.serversign(authEntity!);
      return right(user);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message, statuscode: e.statuscode));
    }
  }

  @override
  ResultFuture<User?> jwtToken() async {
    try {
      final data = localDataImp.getLocalUser();

      return right(User(
          email: data.email,
          idToken: data.idToken,
          name: data.name,
          photoUrl: data.photoUrl,
          jwtToken: data.jwtToken));
    } on CacheException catch (e) {
      return left(CacheFailure(message: e.message, statuscode: e.statuscode));
    }
  }
}
