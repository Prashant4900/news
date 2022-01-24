import 'package:news/core/param/categories_request.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/domain/entities/categories.dart';

abstract class CategoriesRepository {
  Future<DataState<List<Categories>>> getCategories(
    CategoriesRequestParam? param,
  );
}
