import '../../domain/entities/categories_entity.dart';

class CategoryModel extends Category{
  const CategoryModel({required super.id, required super.name, required super.pictureUrl});
factory CategoryModel.fromJson(Map<String, dynamic> json) {
return CategoryModel(
id: json['id'],
name: json['name'],
pictureUrl: json['pictureUrl'],
);
}
}