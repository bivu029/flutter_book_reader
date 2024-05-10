import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/features/dashboard/data/models/client.model.dart';
import 'package:dio/dio.dart';

abstract class DashboardRemoteDataSource {
  //
  Future<List<Book?>> getTrendingBook(String jwtoken);
  Future<List<Book?>> getEditorchoice(String jwtoken);
  Future<Book> getBook(String id, String jwtoken);
}

class DashBordRemoteImp extends DashboardRemoteDataSource {
  final DashboardClient _dashboardClient;


  DashBordRemoteImp({required DashboardClient dashboardClient,})
      : _dashboardClient = dashboardClient;
  @override
  Future<List<Book?>> getEditorchoice(String jwtoken) async {
    try {
      final data = await _dashboardClient.getEditorchoice(jwtoken);
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
  Future<List<Book?>> getTrendingBook(String jwtoken) async {
    try {
      final data = await _dashboardClient.getTrendingBook(jwtoken);
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
  Future<Book> getBook(String id, String jwtoken) async {
    try {
      final data = await _dashboardClient.getbook(id, jwtoken);
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
