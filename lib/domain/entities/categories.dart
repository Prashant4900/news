import 'package:equatable/equatable.dart';

class Categories extends Equatable {
  final int? id;
  final String? name;
  final String? slug;
  final String? icon;
  final String? description;
  final bool? isActive;
  final String? createdAt;
  final String? updatedAt;

  const Categories({
    this.id,
    this.name,
    this.slug,
    this.icon,
    this.description,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        icon,
        description,
        isActive,
        createdAt,
        updatedAt,
      ];
}
