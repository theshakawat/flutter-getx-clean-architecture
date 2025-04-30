import 'package:job_task_1/data/dataresources/remote/category_api.dart';

import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryApi api;

  CategoryRepositoryImpl(this.api);

  @override
  Future<List<Category>> getCategories() {
    return api.fetchCategories();
  }
}
