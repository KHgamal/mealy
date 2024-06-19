import 'package:dartz/dartz.dart';
import 'package:mealy/features/Meals/domain/entities/restaurant_entity.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecase.dart';

import '../repositories/meal_repo.dart';

class GetRestaurantUseCase
    extends BaseUseCase<List<Restaurant>, NoParameters> {
  final MealsRepository mealsRepository;

  GetRestaurantUseCase(this.mealsRepository);

  @override
  Future<Either<Failure, List<Restaurant>>> call([NoParameters? param]) async {
    return await mealsRepository.getRestaurant();
  }
}