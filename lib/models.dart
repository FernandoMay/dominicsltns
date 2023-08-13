class CatalogItem {
  final String title;
  final String description;
  final String imageUrl;
  final String brand;
  final double price;
  final List<String>? flavors;

  CatalogItem(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.brand,
      required this.price,
      this.flavors});
}
