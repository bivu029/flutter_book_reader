import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'dashclinet.client.g.dart';
@RestApi(baseUrl: Api.baseUrl)
abstract class DashClinet {
  factory DashClinet(Dio dio, {String baseUrl}) = _DashClinet;
  @GET('/book/editorchoice')
  Future<List<Book>> getByEditorChoice(@Header('Authorization') String token);

  // @GET('/book/trend')
  //  Future<List<Book>> getBytrend(@Header('Authorization') String token);

  // @GET('/book/continueread')
  //  Future<Book> getByLastRead(@Header('Authorization') String token);
   
  //  @POST('/bookprogress')
  //  Future<User>updateBookChapterProgress(@Header('Authorization') String token,@Body()User user);
}
