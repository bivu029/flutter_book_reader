
import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

abstract class DashBoardLocalDataSource {
  User getUserName();
  Future<void> closeBox();
  Future<List<Book?>> getlocalTrendBooks();
  Future<List<Book?>> getlocalEditorBooks();
  Future<void> savtrendBooks(List<Book?> books);
  Future<void> saveeditorBooks(List<Book?> books);
}

class LocalDatasourceimp extends DashBoardLocalDataSource {
  final Box<User> _userbox;

  // final trendbookHive =
  //     DependencyInjection.sl.get<Box<Book?>>(instanceName: 'trendbooks');
  // final editorchoicedbookHive =
  //     DependencyInjection.sl.get<Box<Book?>>(instanceName: 'editorchoice');
  LocalDatasourceimp({required Box<User> userbox}) : _userbox = userbox;

  @override
  User getUserName() {
    try {
      User? userdata = _userbox.get('user');
      if (userdata == null) {
        throw const CacheException(message: "no user exist", statuscode: 500);
      }
      return userdata;
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> closeBox() async {
    await _userbox.close();
    // await trendbookHive.close();
    // await editorchoicedbookHive.close();
  }

  @override
  Future<List<Book?>> getlocalTrendBooks() async {
    try {
      //final List<Book?> books = trendbookHive.values.toList();
      // if (books.isEmpty) {
      //   throw const CacheException(message: "No books found", statuscode: 500);
      // }
      return [];
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> savtrendBooks(List<Book?> books) async {
    try {
      // await trendbookHive.clear(); // Clear the existing books (optional)
      // await trendbookHive.addAll(books);
    } catch (e) {
     
      throw CacheException(message: e.toString(), statuscode: 500);
    }
  }

  @override
  Future<List<Book?>> getlocalEditorBooks() async {
    try {
      //final List<Book?> books = editorchoicedbookHive.values.toList();
      // if (books.isEmpty) {
      //   throw const CacheException(message: "No books found", statuscode: 500);
      // }
      return [];
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> saveeditorBooks(List<Book?> books) async {
    try {
      // await editorchoicedbookHive
      //     .clear(); // Clear the existing books (optional)
      // await editorchoicedbookHive.addAll(books);
    } catch (e) {
      throw CacheException(message: e.toString(), statuscode: 500);
    }
  }
}
