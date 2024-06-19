import '../../domain/entities/restaurant_entity.dart';

class RestaurantModel extends Restaurant {
  const RestaurantModel(
      {required super.id, required super.address, required super.pictureUrl});
  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json['id'],
      address: json['address'],
      pictureUrl: json['pictureUrl'],
    );
  }
}
