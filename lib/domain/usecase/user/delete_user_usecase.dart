import 'package:news/core/param/user_request.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/core/usecases/usecases.dart';
import 'package:news/domain/entities/user.dart';
import 'package:news/domain/repositories/user_repository.dart';

class CreateUserUsecase implements UseCase<DataState<User>, UserRequestParam> {
  final UserRepository _userRepository;

  CreateUserUsecase(this._userRepository);

  @override
  Future<DataState<User>> call({UserRequestParam? params}) {
    return _userRepository.deleteUser(params: params);
  }
}
