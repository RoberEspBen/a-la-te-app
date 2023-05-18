import 'package:a_la_te_app/features/user/domain/model/user.dart';
import 'package:multiple_result/multiple_result.dart';

// ignore: one_member_abstracts
abstract class UserRepository {
  Future<Result<User, Exception>> getLoggedUser();
  Future<Result<User, Exception>> getUserById({required int id});
}
