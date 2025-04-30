import 'package:get/get.dart';
import 'package:job_task_1/domain/entities/category.dart';
import 'package:job_task_1/domain/usecases/get_categories.dart';

class CategoryController extends GetxController {
  final GetCategories getCategories;

  CategoryController(this.getCategories);

  var categories = <Category>[].obs;
  var filteredCategories = <Category>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  void fetchCategories() async {
    isLoading.value = true;
    final result = await getCategories(); // useCase call
    categories.assignAll(result);
    filteredCategories.assignAll(result); // search list init
    isLoading.value = false;
  }

  void filterCategories(String query) {
    if (query.isEmpty) {
      filteredCategories.assignAll(categories);
    } else {
      filteredCategories.assignAll(
        categories.where(
          (cat) => cat.name.toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }
}
