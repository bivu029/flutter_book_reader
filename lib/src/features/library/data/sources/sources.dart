import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/library/data/models/client.dart';
import 'package:bookbazar/src/features/library/data/models/models.dart';
import 'package:dio/dio.dart';

abstract class LibraryRemoteDataSource {
  Future<List<Book>> getbookbyid(
      GetBookList bookList, String jwtoken, int page, int limit);
}

class LibraryRemoteImp implements LibraryRemoteDataSource {
  final LibrayClient _librayClient;

  LibraryRemoteImp({required LibrayClient librayClient})
      : _librayClient = librayClient;
  @override
  Future<List<Book>> getbookbyid(
      GetBookList bookList, String jwtoken, int page, int limit) async {
    try {
      final data = _librayClient.getBooksmethod(bookList, jwtoken,
          page: page, limit: limit);
      return data;
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
