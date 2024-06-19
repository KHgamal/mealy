import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final int id;
  final String name;
  final String pictureUrl;

  const Category({
    required this.id,
    required this.name,
    required this.pictureUrl,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    pictureUrl,
  ];
}