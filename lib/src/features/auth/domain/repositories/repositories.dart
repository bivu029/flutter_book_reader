import 'package:bookbazar/src/core/global/all.enitity.dart';
import 'package:bookbazar/src/core/utils/typedef.dart';


abstract class AuthRepository {
  ResultFuture<User> serversign(User? user);
  ResultFuture<User?> jwtToken();
}
