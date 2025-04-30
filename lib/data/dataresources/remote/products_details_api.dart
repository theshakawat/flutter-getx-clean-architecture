import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../models/product_details_model.dart';

class ProductDetailsApi {
  Future<ProductDetailsModel> fetchProductDetails(int id) async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products/$id'));
    if (response.statusCode == 200) {
      return ProductDetailsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product details');
    }
  }
}