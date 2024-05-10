import 'package:bookbazar/src/core/error/exception.dart';
import 'package:equatable/equatable.dart';


abstract class Failure extends Equatable {
  Failure({required this.message, required this.statuscode})
      : assert(
          statuscode is String || statuscode is int,
          'statuscode can not be ${statuscode.runtimeType}',
        );

  final String? message;
  final dynamic statuscode;

  String get errorMessage =>
      'message:$message error:${statuscode is String ? '' : 'error'}';
  @override
  List<dynamic> get props => [message, statuscode];
}

class CacheFailure extends Failure {
  CacheFailure({required super.message, required super.statuscode});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message, required super.statuscode});
  ServerFailure.fromException(ServerException exception)
      : this(
          message: exception.message,
          statuscode: exception.statuscode,
        );
}
