import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task_1/presentation/bindings/product_binding.dart';
import 'package:job_task_1/presentation/screens/product/category_products_screen.dart';
import '../../controllers/category_controller.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController(Get.find()));
    final controller = Get.find<CategoryController>();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.white),
        title: TextField(
          onChanged: (value) {
            controller.filterCategories(value);
          },
          decoration: const InputDecoration(
            hintText: 'Search categories...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white70),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final filtered = controller.filteredCategories;

        return ListView.builder(
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            final category = filtered[index];
            return ListTile(
              title: Text(category.name),
              leading: Image.network(
                'https://img.icons8.com/dusk/45/sorting-answers.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
              trailing: const Icon(Icons.arrow_circle_right),
              onTap: () {
                Get.to(
                  () => CategoryProductsScreen(categoryName: category.name),
                  binding: ProductBinding(),
                );
              },
            );
          },
        );
      }),
    );
  }
}
