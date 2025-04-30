class ProductDetailsEntity {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final List<String> images;

  ProductDetailsEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.images,
  });
}