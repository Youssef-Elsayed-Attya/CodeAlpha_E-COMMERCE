
import 'package:sneakers/models/rating_model.dart';

class StoreModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  StoreModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating});

  factory StoreModel.fromJson(jsonData) {
    return StoreModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: (jsonData['price'] as num).toDouble(),
        description: jsonData['description'],
        image: jsonData['image'],
        category: jsonData['category'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}
