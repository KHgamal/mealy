import 'package:bloc/bloc.dart';

import '../../../../domain/usecases/get_meals_usecase.dart';
import 'meal_state.dart';

class MealCubit extends Cubit<MealCubitState> {
  MealCubit(this.mealsUseCase) : super(MealCubitInitial());

  final GetMealsUseCase mealsUseCase;
  Future<void> fetchMeals() async {
      emit(MealCubitLoading());
    var result = await mealsUseCase.call();
    result.fold((failure) {
   emit(MealCubitFailure(failure.message));
    }, (meals) {
      emit(MealCubitSuccess(meals));
    });
  }
}