import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../models/category_model.dart';

class CategoryApi {
  Future<List<CategoryModel>> fetchCategories() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products/categories'));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((json) => CategoryModel.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load categories");
    }
  }
}
