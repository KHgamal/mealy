import 'package:get_it/get_it.dart';

import '../../../features/Meals/data/datasource/meal_remote_datasource.dart';
import '../../../features/Meals/data/repository/meal_repository_implementation.dart';

final getIt = GetIt.instance;

void setUpMealServiceLocator() {
  getIt.registerSingleton<MealRepositoryImpl>(
    MealRepositoryImpl(
      remoteDataSource: MealsRemoteDataSourceImpl(),
    ),
  );
}
