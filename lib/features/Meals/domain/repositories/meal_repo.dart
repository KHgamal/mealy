import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/categories_entity.dart';
import '../entities/meals_entity.dart';
import '../entities/restaurant_entity.dart';

abstract class MealsRepository {
  Future<Either<Failure, List<Meal>>> getMeals();
  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<Restaurant>>> getRestaurant();

  // Future<Either<Failure, MovieDetail>> getMovieDetails(
  //     MovieDetailsParameters parameters);

}