import 'package:dio/dio.dart' hide Headers;
import 'package:news/config/meta/constant.dart' show API, Config;
import 'package:news/data/model/user/user.dart' show UserModel;
import 'package:retrofit/retrofit.dart'
    show Body, DELETE, GET, Headers, HttpResponse, PATCH, POST, Path, RestApi;

part 'user_api_service.g.dart';

@RestApi(baseUrl: API.baseUrl)
abstract class UserApiService {
  factory UserApiService(Dio dio, {String baseUrl}) = _UserApiService;

  @GET("/firebase_users?uid=eq.{uid}")
  @Headers(<String, dynamic>{
    "apikey": Config.kApiKey,
    "Authorization": Config.kAuthorization,
    "Content-Type": 'application/json',
  })
  Future<HttpResponse<UserResponseModel>> getUser(@Path() String uid);

  @POST("/firebase_users")
  @Headers(<String, dynamic>{
    "apikey": Config.kApiKey,
    "Authorization": Config.kAuthorization,
    "Content-Type": 'application/json',
    "Prefer": "return=representation",
  })
  Future<HttpResponse<UserResponseModel>> createUser(@Body() UserModel user);

  @PATCH("/firebase_users?uid=eq.{uid}")
  @Headers(<String, dynamic>{
    "apikey": Config.kApiKey,
    "Authorization": Config.kAuthorization,
    "Content-Type": 'application/json',
  })
  Future<HttpResponse<UserResponseModel>> updateUser(
    @Path() String uid,
    @Body() UserModel user,
  );

  @DELETE("/firebase_users?uid=eq.{uid}")
  @Headers(<String, dynamic>{
    "apikey": Config.kApiKey,
    "Authorization": Config.kAuthorization,
    "Prefer": "return=representation",
  })
  Future<HttpResponse<UserResponseModel>> deleteUser(@Path() String uid);
}

// flutter pub run build_runner build --delete-conflicting-outputs

class UserResponseModel {
  final UserModel users;

  UserResponseModel({required this.users});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(users: json[0]);
  }
}
