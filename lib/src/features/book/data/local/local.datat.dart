import 'package:bookbazar/src/core/config/config.dart';
import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocaldataSource {
  Future<BookProgress?> getBookprogress(String bookid);
  Future<void> saveBookprogress(String bookid, BookProgress? bookProgress);
  Future<void> lastBookid(String bookid);
  
}

class LocaldataImp extends LocaldataSource {
  final bookprogressHive = DependencyInjection.sl
      .get<Box<BookProgress?>>(instanceName: 'bookprogress');
  @override
  Future<BookProgress?> getBookprogress(String bookid) async {
    try {
      return bookprogressHive.get(bookid);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> saveBookprogress(
      String bookid, BookProgress? bookProgress) async {
    try {
      await bookprogressHive.put(bookid, bookProgress);
    } catch (e) {
    
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> lastBookid(String bookid) async {
    try {
      final getdatabase = DependencyInjection.sl<SharedPreferences>();
      await getdatabase.setString("lastid", bookid);
    } catch (e) {
    
      throw CacheException(message: e.toString());
    }
  }

}
