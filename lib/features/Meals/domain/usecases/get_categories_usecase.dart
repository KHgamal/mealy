import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/categories_entity.dart';
import '../repositories/meal_repo.dart';

class GetCategoriesUseCase
    extends BaseUseCase<List<Category>, NoParameters> {
  final MealsRepository mealsRepository;

  GetCategoriesUseCase(this.mealsRepository);

  @override
  Future<Either<Failure, List<Category>>> call([NoParameters? param]) async {
    return await mealsRepository.getCategories();
  }
}