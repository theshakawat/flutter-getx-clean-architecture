import 'package:get/get.dart';
import '../../domain/entities/product_details.dart';
import '../../domain/usecases/get_product_details.dart';

class ProductDetailsController extends GetxController {
  final GetProductDetails getProductDetails;

  ProductDetailsController(this.getProductDetails);

  var product = Rxn<ProductDetailsEntity>();
  var isLoading = false.obs;

  void loadProduct(int id) async {
    isLoading.value = true;
    product.value = await getProductDetails(id);
    isLoading.value = false;
  }
}
