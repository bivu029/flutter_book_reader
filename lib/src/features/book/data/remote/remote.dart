import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/book/data/client/book.client.dart';
import 'package:bookbazar/src/features/book/data/client/updatebook.user.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<User> updateUser(String userid, User user, String jwttoken);
  Future<Book> getBook(String id, String jwtoken);
}

class RemotedataImp extends RemoteDataSource {
  final UpdateBookUserClinet _updateBookUserClinet;
  final BookClinet _bookClinet;

  RemotedataImp({required UpdateBookUserClinet updateBookUserClinet,required  BookClinet bookclinet})
      : _updateBookUserClinet = updateBookUserClinet,_bookClinet=bookclinet;
  @override
  Future<User> updateUser(String userid, User user, String jwttoken) async {
    try {
  
      final data = await _updateBookUserClinet.upadateUser(
          userid, jwttoken, 'application/json', user);
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

  @override
  Future<Book> getBook(String id, String jwtoken)async {
    try {
       final data = await _bookClinet.getbook(id, jwtoken);
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
