import '../entities/product_details.dart';

abstract class ProductDetailsRepository {
  Future<ProductDetailsEntity> getProductDetails(int id);
}