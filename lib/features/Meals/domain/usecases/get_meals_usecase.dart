import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/meals_entity.dart';
import '../repositories/meal_repo.dart';

class GetMealsUseCase
    extends BaseUseCase<List<Meal>, NoParameters> {
  final MealsRepository mealsRepository;

  GetMealsUseCase(this.mealsRepository);

  @override
  Future<Either<Failure, List<Meal>>> call(NoParameters parameters) async {
    return await mealsRepository.getMeals();
  }
}