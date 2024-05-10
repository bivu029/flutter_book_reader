
import 'package:bookbazar/src/core/utils/typedef.dart';

/// This abstract class use for call() method inside it
///
///  * ResultFuture<Type> call();
abstract class UsecasesWithParams<Type, Params> {
  const UsecasesWithParams();

  ///this call method return  ResultFuture<Type>
  ResultFuture<Type> call(Params params);
}

/// This abstract class use for call() method inside it
///
///  * ResultFuture<Type> call();
abstract class UsecasesWithOutParams<Type> {
  const UsecasesWithOutParams();

  ///this call method return  ResultFuture<Type>
  ResultFuture<Type> call();
}