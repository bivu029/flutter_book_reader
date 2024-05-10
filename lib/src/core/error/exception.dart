// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({required this.message, required this.statuscode});

  final String? message;
  final dynamic statuscode;
  @override
  List<Object?> get props => [message, statuscode];
}

class CacheException extends Equatable implements Exception {
  const CacheException({required this.message, this.statuscode = 500});

  final String message;
  final dynamic statuscode;
  @override
  List<Object?> get props => [message, statuscode];
}

/// An exception indicating that the timer was canceled.
class CancelException implements Exception {
 
}
