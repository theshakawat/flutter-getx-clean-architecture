import '../../domain/entities/product_details.dart';
import '../../domain/repositories/product_details_repository.dart';
import '../dataresources/remote/products_details_api.dart';

class ProductDetailsRepositoryImpl implements ProductDetailsRepository {
  final ProductDetailsApi api;
  ProductDetailsRepositoryImpl(this.api);

  @override
  Future<ProductDetailsEntity> getProductDetails(int id) {
    return api.fetchProductDetails(id);
  }
}