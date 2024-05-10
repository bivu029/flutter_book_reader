import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:bookbazar/src/features/auth/data/models/auth_clinet.dart';

import 'package:bookbazar/src/features/auth/data/sources/auth_local.data.dart';
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<User> serversign(User authModel);
}

class AuthRemoteImp extends AuthRemoteDataSource {
  final AuthClient _client;
  final SharedPreferences _preferences;
  final AuthLocalDataImp _authLocalDataImp;

  AuthRemoteImp(
      {required AuthClient client,
      required SharedPreferences preferences,
      required AuthLocalDataImp authLocalDataImp})
      : _client = client,
        _preferences = preferences,
        _authLocalDataImp = authLocalDataImp;

  @override
  Future<User> serversign(User authModel) async {
    try {
      //check if token google token exist or not
      if (authModel.idToken != null) {
        await _preferences.setString(
            Api.token, authModel.idToken!); //will be  deprecated
  

        final result = await _client.signup(authModel);

        if (result == null || result.idToken == null) {
    
          throw const ServerException(
              message: "user not created", statuscode: 404);
        }

        //save user data in database using isar
        await _authLocalDataImp.saveUser(result.email, result.idToken!,
            result.name, result.photoUrl, result.jwtToken!);
        //GET data from local storage
        final data = _authLocalDataImp.getLocalUser();

        return User(
            email: data.email,
            idToken: data.idToken,
            name: data.name,
            photoUrl: data.photoUrl,
            jwtToken: data.jwtToken
            );
      } else {
        throw const ServerException(
            message: " no token exist", statuscode: 404);
      }
    } on DioException catch (e) {
     
      // Handle DioError here
      throw ServerException(message: e.message, statuscode: 500);
    } on ServerException {
      rethrow;
    } catch (e) {
     
      // Handle other exceptions here
      throw ServerException(message: e.toString(), statuscode: 500);
    }
  }
}
