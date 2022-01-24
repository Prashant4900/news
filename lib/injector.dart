import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:news/config/meta/constant.dart';
import 'package:news/data/repositories/user_repository_impl.dart';
import 'package:news/data/source/remote/user_api_service.dart';
import 'package:news/domain/repositories/user_repository.dart';
import 'package:news/domain/usecase/user/get_user_usecase.dart';

GetIt locator = GetIt.instance;

void setup() async {
  // User User Instance
  locator.registerLazySingleton<User>(() => FirebaseAuth.instance.currentUser!);

  // Dio client
  locator.registerSingleton<Dio>(Dio());

  // Dependencies
  locator.registerSingleton<UserApiService>(
      UserApiService(locator(), baseUrl: API.baseUrl));
  locator.registerSingleton<UserRepository>(UserRepositoryImpl(locator()));

  // UseCases
  locator.registerSingleton<GetUserUsecase>(GetUserUsecase(locator()));
}
