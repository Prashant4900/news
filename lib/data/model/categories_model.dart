import 'package:news/domain/entities/categories.dart';

class CategoriesModel extends Categories {
  const CategoriesModel({
    int? id,
    String? name,
    String? slug,
    String? description,
    bool? isActive,
    String? createdAt,
    String? updatedAt,
  }) : super(
          id: id,
          name: name,
          slug: slug,
          description: description,
          isActive: isActive,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    // if (json == null) return null;

    return CategoriesModel(
      id: json["id"] as int,
      name: json["name"] as String,
      slug: json["slug"] as String,
      description: json["description"] as String,
      isActive: json["is_active"] as bool,
      createdAt: json["created_at"] as String,
      updatedAt: json["updated_at"] as String,
    );
  }
}
