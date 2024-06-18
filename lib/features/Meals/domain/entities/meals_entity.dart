import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  final String id;
  final String name;
  final String pictureUrl;
  final String components;
  final int price;
  final int calories;
  final String type;

  const Meal({
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