import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'book.client.g.dart';

@RestApi(baseUrl: '${Api.baseUrl}/book')
abstract class BookClinet {
  factory BookClinet(Dio dio, {String baseUrl}) = _BookClinet;
  // @GET('/book/editorchoice')
  // Future<List<Book>> getByEditorChoice(@Header('Authorization') String token);

  // @GET('/book/trend')
  //  Future<List<Book>> getBytrend(@Header('Authorization') String token);

  // @GET('/book/continueread')
  //  Future<Book> getByLastRead(@Header('Authorization') String token);
   
  //  @POST('/bookprogress')
  //  Future<User>updateBookChapterProgress(@Header('Authorization') String token,@Body()User user);
    @GET("/{id}")
  Future<Book> getbook(
      @Path("id") String id, @Header('authorization') String jwttoken);
}

