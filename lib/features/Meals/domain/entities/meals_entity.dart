import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  final int id;
  final String name;
  final String pictureUrl;
  final String components;
  final double price;
  final int calories;
  final String type;
  final MealRestaurant restaurant;
  final MealCategory category;

  const Meal({required this.restaurant,required this.category,
    required this.id,
    required this.name,
    required this.pictureUrl,
    required this.components,
    required this.price,
    required this.calories,
    required this.type,
  });

  @override
   List<Object?> get props =>[
     id,
    name,
    pictureUrl,
    components,
    price,
    calories,
    type,
  ];

}

class MealRestaurant extends Equatable{
  final String address;
  final String pictureUrl;

 const MealRestaurant({required this.address, required this.pictureUrl});

  factory MealRestaurant.fromJson(Map<String, dynamic> json){
    return MealRestaurant(address: json['address'],
        pictureUrl: json['pictureUrl']);
  }

  @override
  List<Object?> get props => [
    address,
    pictureUrl
  ];
}

class MealCategory extends Equatable{
  final String name;

  const MealCategory({required this.name});

  factory MealCategory.fromJson(Map<String, dynamic> json){
    return MealCategory(name: json['name']);
  }
  @override
  List<Object?> get props => [
    name,
  ];
}