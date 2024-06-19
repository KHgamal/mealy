import '../../domain/entities/meals_entity.dart';

class MealModel extends Meal {
  const MealModel(
      {required super.id,
      required super.name,
      required super.pictureUrl,
      required super.components,
      required super.price,
      required super.calories,
      required super.type, required super.restaurant, required super.category});
  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      id: json['id'],
      name: json['name'],
      pictureUrl: json['pictureUrl'],
      components: json['components'],
      price: json['price'],
      calories: json['calories'],
      type: json['type'],
      restaurant: MealRestaurant.fromJson(json['restaurant']),
      category: MealCategory.fromJson(json['category']) ,
    );
  }
}
