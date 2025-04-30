import 'package:get/get.dart';
import 'package:job_task_1/data/dataresources/remote/category_api.dart';
import 'package:job_task_1/domain/repositories/category_repository.dart';
import '../../../data/repositories/category_repository_impl.dart';
import '../../../domain/usecases/get_categories.dart';
import '../controllers/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryApi>(() => CategoryApi());
    Get.lazyPut<CategoryRepository>(() => CategoryRepositoryImpl(Get.find()));
    Get.lazyPut<GetCategories>(() => GetCategories(Get.find()));
    Get.lazyPut<CategoryController>(() => CategoryController(Get.find()));
  }
}
