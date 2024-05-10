import 'package:bookbazar/src/core/api/api.dart';

import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
part 'client.model.g.dart';

@RestApi(baseUrl: '${Api.baseUrl}/book')
abstract class DashboardClient {
  factory DashboardClient(Dio dio, {String baseUrl}) = _DashboardClient;

  @GET("/trending")
  Future<List<Book?>> getTrendingBook(@Header('authorization') String jwttoken);

  @GET("/editorchoice")
  Future<List<Book?>> getEditorchoice(@Header('authorization') String jwttoken);
  @GET("/{id}")
  Future<Book> getbook(
      @Path("id") String id, @Header('authorization') String jwttoken);
}



// List<Book> parseBooks(dynamic responseBody) {
//   // Ensure that responseBody is a List of Maps before proceeding.
//   if (responseBody is! List) {
//     print('Expected a list of books');
//     throw Exception('Expected a list of books');
//   }

//   // Cast each element in the list to Map<String, dynamic> before using it.
//   return responseBody.map<Book>((json) {
//     if (json is! Map<String, dynamic>) {
//       print('Invalid book data');
//       throw Exception('Invalid book data');
//     }
//     // print(json);
//     return Book.fromJson(json);
//   }).toList();
// }

// Future<List<Book>> getTrending(String jwtToken) async {
//   final dio = Dio();
//   try {
//     final response = await dio.get(
//       'http://localhost:3000/v1/book/trending',
//       options: Options(headers: {'Authorization': jwtToken}),
//     );
//     return parseBooks(response.data);
//   } on DioException catch (e) {
//     print(e);
//     // Handle DioError here, e.g., by logging or rethrowing
//     throw ServerException(
//         message: e.message, statuscode: e.response?.statusCode ?? 500);
//   } catch (e) {
//     // Handle other exceptions here, e.g., by logging or rethrowing
//     print(e);
//     throw ServerException(message: e.toString(), statuscode: 500);
//   }
// }
