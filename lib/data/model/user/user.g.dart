// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      uid: json['uid'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phone_number'] as String?,
      photo: json['photo'] as String?,
      emailVerified: json['email_verified'] as bool?,
      isAnonymous: json['is_anonymous'] as bool?,
      isActive: json['is_active'] as bool?,
      provider: json['provider'] as String?,
      language: json['language'] as String?,
      darkTheme: json['dark_theme'] as bool?,
      layout: json['layout'] as String?,
      refreshToken: json['refresh_token'] as String?,
      tenantId: json['tenant_id'] as String?,
      createdAt: json['created_at'] as String?,
      lastLogin: json['last_login'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'display_name': instance.displayName,
      'email': instance.email,
      'password': instance.password,
      'phone_number': instance.phoneNumber,
      'photo': instance.photo,
      'email_verified': instance.emailVerified,
      'is_anonymous': instance.isAnonymous,
      'is_active': instance.isActive,
      'provider': instance.provider,
      'language': instance.language,
      'dark_theme': instance.darkTheme,
      'layout': instance.layout,
      'refresh_token': instance.refreshToken,
      'tenant_id': instance.tenantId,
      'created_at': instance.createdAt,
      'last_login': instance.lastLogin,
    };
