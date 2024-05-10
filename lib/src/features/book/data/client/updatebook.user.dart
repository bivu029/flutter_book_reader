import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'updatebook.user.g.dart';

@RestApi(baseUrl: '${Api.baseUrl}/user')
abstract class UpdateBookUserClinet {
  factory UpdateBookUserClinet(Dio dio, {String baseUrl}) =
      _UpdateBookUserClinet;

  @PATCH('/{id}')
  Future<User> upadateUser(
      @Path("id") String id,
      @Header('authorization') String jwttoken,
      @Header('Content-Type') String json,
      @Body() User user);
}
