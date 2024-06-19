import 'package:dartz/dartz.dart';

import 'package:mealy/core/errors/failure.dart';

import 'package:mealy/features/Meals/domain/entities/categories_entity.dart';

import 'package:mealy/features/Meals/domain/entities/meals_entity.dart';

import 'package:mealy/features/Meals/domain/entities/restaurant_entity.dart';

import '../../domain/repositories/meal_repo.dart';
import '../datasource/meal_remote_datasource.dart';

class MealRepositoryImpl implements MealsRepository {
  final MealsRemoteDataSource remoteDataSource;

  MealRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    final result = await remoteDataSource.getCategories();
    try {
      return Right(result);
    } catch (failure) {
      return Left(ServerFailure(failure.toString()));
    }
  }
  @override
  Future<Either<Failure, List<Meal>>> getMeals() async {
    final result = await remoteDataSource.getMeals();
    try {
      return Right(result);
    } catch (failure) {
      return Left(ServerFailure(failure.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Restaurant>>> getRestaurant() async {
    final result = await remoteDataSource.getRestaurant();
    try {
      return Right(result);
    } catch (failure) {
      return Left(ServerFailure(failure.toString()));
    }
  }
}