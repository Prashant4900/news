import 'package:news/core/param/user_request.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/data/model/user/user.dart';
import 'package:news/domain/entities/user.dart';

abstract class UserRepository {
  Future<DataState<User>> getUser({UserRequestParam? params});
  Future<DataState<User>> updateUser({UserRequestParam? params});
  Future<DataState<User>> deleteUser({UserRequestParam? params});
  Future<DataState<User>> createUser({UserModel user});
}
