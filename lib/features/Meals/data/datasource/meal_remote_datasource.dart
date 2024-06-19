import 'dart:convert';

import '../../../../core/errors/failure.dart';
import '../models/category_model.dart';
import '../models/meal_details_model.dart';
import '../models/restaurant_model.dart';
import 'package:http/http.dart' as http;

abstract class MealsRemoteDataSource{
  Future<List<MealModel>> getMeals();
  Future<List<CategoryModel>> getCategories();
  Future<List<RestaurantModel>> getRestaurant();
}
class MealsRemoteDataSourceImpl implements MealsRemoteDataSource {
  static const String baseUrl = 'http://meallyapp.runasp.net/api/Restaurant';
  ///api/Restaurant/restaurant
  ///api/Restaurant/meals
  ///api/Restaurant/category
  @override
  Future<List<CategoryModel>> getCategories()async {
    final response = await http.get(Uri.parse('$baseUrl/category'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => CategoryModel.fromJson(json)).toList();
    } else {
      throw const ServerFailure('Failed to load Categories');
    }
  }

  @override
  Future<List<MealModel>> getMeals() async {
    final response = await http.get(Uri.parse('$baseUrl/meals'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => MealModel.fromJson(json)).toList();
    } else {
      throw const ServerFailure('Failed to load Meals');
    }
  }

  @override
  Future<List<RestaurantModel>> getRestaurant() async {
    final response = await http.get(Uri.parse('$baseUrl/restaurant'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => RestaurantModel.fromJson(json)).toList();
    } else {
      throw const ServerFailure('Failed to load restaurants');
    }
  }
}