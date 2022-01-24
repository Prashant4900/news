import 'dart:io' show HttpStatus;

import 'package:dio/dio.dart' show DioError, DioErrorType;
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:news/data/model/user/user.dart';
import 'package:news/data/source/remote/user_api_service.dart'
    show UserApiService;
import 'package:news/domain/entities/user.dart' show User;
import 'package:news/core/resources/data_state.dart'
    show DataFailed, DataState, DataSuccess;
import 'package:news/core/param/user_request.dart' show UserRequestParam;
import 'package:news/domain/repositories/user_repository.dart'
    show UserRepository;

class UserRepositoryImpl extends UserRepository {
  final UserApiService _userApiService;

  UserRepositoryImpl(this._userApiService);

  @override
  Future<DataState<User>> createUser({UserModel? user}) async {
    try {
      final httpResponse = await _userApiService.createUser(user!);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (kDebugMode) {
          print(
              "****************** User Data Deleted ************************");
          print(httpResponse.response.data);
        }
        return DataSuccess(httpResponse.response.data);
      }
      return DataFailed(
        DioError(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          type: DioErrorType.response,
          error: httpResponse.response.statusMessage,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<User>> deleteUser({UserRequestParam? params}) async {
    try {
      final httpResponse = await _userApiService.deleteUser(params!.userId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (kDebugMode) {
          print(
              "****************** User Data Deleted ************************");
          print(httpResponse.response.data);
        }
        return DataSuccess(httpResponse.response.data);
      }
      return DataFailed(
        DioError(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          type: DioErrorType.response,
          error: httpResponse.response.statusMessage,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<User>> getUser({UserRequestParam? params}) async {
    print("object***********");

    try {
      final httpResponse = await _userApiService.getUser(params!.userId);

      print(
          "httpResponse.response.statusCode: ${httpResponse.response.statusCode}");
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (kDebugMode) {
          print(
              "****************** User Data Receive ************************");
          print("httpResponse.data ${httpResponse.data}");
        }
        return DataSuccess(httpResponse.response.data[0]);
      }
      return DataFailed(
        DioError(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          type: DioErrorType.response,
          error: httpResponse.response.statusMessage,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<User>> updateUser(
      {UserRequestParam? params, UserModel? user}) async {
    try {
      final httpResponse =
          await _userApiService.updateUser(params!.userId, user!);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (kDebugMode) {
          print(
              "****************** User Data Deleted ************************");
          print(httpResponse.response.data);
        }
        return DataSuccess(httpResponse.response.data);
      }
      return DataFailed(
        DioError(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          type: DioErrorType.response,
          error: httpResponse.response.statusMessage,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
