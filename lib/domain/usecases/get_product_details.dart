import '../entities/product_details.dart';
import '../repositories/product_details_repository.dart';

class GetProductDetails {
  final ProductDetailsRepository repository;
  GetProductDetails(this.repository);

  Future<ProductDetailsEntity> call(int id) async {
    return repository.getProductDetails(id);
  }
}