import '../repositories/product_repository.dart';
import '../entities/product.dart';

class FetchProducts {
  final ProductRepository repository;

  FetchProducts(this.repository);

  Future<List<Product>> execute(String categoryName) async {
    return await repository.getCategoryProducts(categoryName);
  }
}
