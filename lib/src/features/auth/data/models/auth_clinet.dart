import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';

import "package:retrofit/http.dart";
 import 'package:dio/dio.dart' hide Headers;
part 'auth_clinet.g.dart';

@RestApi(baseUrl: Api.baseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;
   @POST("/user")
   @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<User?> signup(@Body() User authModel);
}
