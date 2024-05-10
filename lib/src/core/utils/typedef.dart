import 'package:bookbazar/src/core/error/failure.dart';

import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;

///return a function
typedef Debounceable<S, T> = Future<S?> Function(T? parameter);

typedef ResultDebounce<S, T>
    = Future<Either<Failure, Future<S?> Function(T parameter)>>;

