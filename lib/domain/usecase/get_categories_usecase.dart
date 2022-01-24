import 'package:news/core/param/categories_request.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/core/usecases/usecases.dart';
import 'package:news/domain/entities/categories.dart';
import 'package:news/domain/repositories/categories_repository.dart';

class GetCategoriesUseCase
    implements UseCase<DataState<List<Categories>>, CategoriesRequestParam> {
  final CategoriesRepository _repository;

  GetCategoriesUseCase(this._repository);

  @override
  Future<DataState<List<Categories>>> call({CategoriesRequestParam? params}) {
    return _repository.getCategories(params);
  }
}
