import 'package:bookbazar/src/core/api/api.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/library/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'client.g.dart';

@RestApi(baseUrl: '${Api.baseUrl}/book')
abstract class LibrayClient {
  factory LibrayClient(Dio dio, {String baseUrl}) = _LibrayClient;
  @POST('/getBooks')
  Future<List<Book>> getBooksmethod(
    @Body() GetBookList getBookList, 
     @Header('authorization') String jwttoken,
   
    {
    @Query('page') int page = 1,
    @Query('limit') int limit = 10,
    @Header('Content-Type') String json='application/json',
  });
}
