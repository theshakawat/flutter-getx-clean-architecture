import 'package:get/get.dart';

import '../../data/dataresources/remote/products_details_api.dart';
import '../../data/repositories/product_details_repository_impl.dart';
import '../../domain/repositories/product_details_repository.dart';
import '../../domain/usecases/get_product_details.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    // Register the API
    Get.lazyPut<ProductDetailsApi>(() => ProductDetailsApi());
    // Register the repository implementation
    Get.lazyPut<ProductDetailsRepository>(() => ProductDetailsRepositoryImpl(Get.find()),);
    // Register the useCase
    Get.lazyPut<GetProductDetails>(() => GetProductDetails(Get.find()));
    // Register the controller
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController(Get.find()));
  }
}
