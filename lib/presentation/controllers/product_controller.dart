import 'package:get/get.dart';
import 'package:job_task_1/domain/usecases/get_products.dart';
import '../../domain/entities/product.dart';

class ProductController extends GetxController {
  final FetchProducts fetchProducts;

  ProductController(this.fetchProducts);

  var allProducts = <Product>[].obs;
  var filteredProducts = <Product>[].obs;
  var isLoading = true.obs;

  void fetchProductsByCategory(String categoryName) async {
    try {
      isLoading.value = true;
      final products = await fetchProducts.execute(categoryName);
      allProducts.value = products;
      filteredProducts.value = products;
    } catch (e) {
      Get.snackbar("Error", "Failed to load products");
    } finally {
      isLoading.value = false;
    }
  }

  void filterSearch(String query) {
    if (query.isEmpty) {
      filteredProducts.value = allProducts;
    } else {
      filteredProducts.value =
          allProducts.where((product) {
            return product.title.toLowerCase().contains(query.toLowerCase());
          }).toList();
    }
  }
}
