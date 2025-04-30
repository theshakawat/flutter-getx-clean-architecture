import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductAPI {
  Future<List<dynamic>> fetchCategoryProducts(String categoryName) async {
    final url = 'https://dummyjson.com/products/category/$categoryName';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['products'];
    } else {
      throw Exception('Failed to load products');
    }
  }
}
