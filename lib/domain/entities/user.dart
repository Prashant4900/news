import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String uid;
  final String? displayName;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? photo;
  final bool? emailVerified;
  final bool? isAnonymous;
  final bool? isActive;
  final String? provider;
  final String? language;
  final bool? darkTheme;
  final String? layout;
  final String? refreshToken;
  final String? tenantId;
  final String? createdAt;
  final String? lastLogin;

  const User({
    this.id,
    required this.uid,
    this.displayName,
    this.email,
    this.password,
    this.phoneNumber,
    this.photo,
    this.emailVerified,
    this.isAnonymous,
    this.isActive,
    this.provider,
    this.language,
    this.darkTheme,
    this.layout,
    this.refreshToken,
    this.tenantId,
    this.createdAt,
    this.lastLogin,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      uid,
      displayName,
      email,
      password,
      phoneNumber,
      photo,
      emailVerified,
      isAnonymous,
      isActive,
      provider,
      language,
      darkTheme,
      layout,
      refreshToken,
      tenantId,
      createdAt,
      lastLogin,
    ];
  }
}
