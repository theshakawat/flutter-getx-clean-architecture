import 'package:get/get.dart';
import 'package:job_task_1/data/dataresources/remote/product_api.dart';
import 'package:job_task_1/data/repositories/product_repository_impl.dart';
import 'package:job_task_1/domain/repositories/product_repository.dart';
import 'package:job_task_1/domain/usecases/get_products.dart';
import '../../presentation/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductAPI>(() => ProductAPI());
    Get.lazyPut<ProductRepository>(() => ProductRepositoryImpl(Get.find()));
    Get.lazyPut<FetchProducts>(() => FetchProducts(Get.find()));
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
