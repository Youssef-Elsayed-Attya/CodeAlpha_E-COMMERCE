class Product {
  final String pName;
  final String pPrice;
  final String pLocation;
  final String pDescription;
  final String pCategory;
  final String pId;
  final int pQuantity;

  Product(
      {required this.pQuantity,
      required this.pId,
      required this.pName,
      required this.pCategory,
      required this.pDescription,
      required this.pLocation,
      required this.pPrice});
}
