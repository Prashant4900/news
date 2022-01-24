import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final int? id;
  final String? uid;
  @JsonKey(name: 'display_name')
  final String? displayName;
  final String? email;
  final String? password;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final String? photo;
  @JsonKey(name: 'email_verified')
  final bool? emailVerified;
  @JsonKey(name: 'is_anonymous')
  final bool? isAnonymous;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  final String? provider;
  final String? language;
  @JsonKey(name: 'dark_theme')
  final bool? darkTheme;
  final String? layout;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'tenant_id')
  final String? tenantId;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'last_login')
  final String? lastLogin;

  const UserModel({
    this.id,
    this.uid,
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

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    int? id,
    String? uid,
    String? displayName,
    String? email,
    String? password,
    String? phoneNumber,
    String? photo,
    bool? emailVerified,
    bool? isAnonymous,
    bool? isActive,
    String? provider,
    String? language,
    bool? darkTheme,
    String? layout,
    String? refreshToken,
    String? tenantId,
    String? createdAt,
    String? lastLogin,
  }) {
    return UserModel(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photo: photo ?? this.photo,
      emailVerified: emailVerified ?? this.emailVerified,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      isActive: isActive ?? this.isActive,
      provider: provider ?? this.provider,
      language: language ?? this.language,
      darkTheme: darkTheme ?? this.darkTheme,
      layout: layout ?? this.layout,
      refreshToken: refreshToken ?? this.refreshToken,
      tenantId: tenantId ?? this.tenantId,
      createdAt: createdAt ?? this.createdAt,
      lastLogin: lastLogin ?? this.lastLogin,
    );
  }

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
