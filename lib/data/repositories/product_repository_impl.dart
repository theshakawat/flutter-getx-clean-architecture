import 'package:job_task_1/data/dataresources/remote/product_api.dart';

import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductAPI productAPI;

  ProductRepositoryImpl(this.productAPI);

  @override
  Future<List<Product>> getCategoryProducts(String categoryName) async {
    final data = await productAPI.fetchCategoryProducts(categoryName);
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}
