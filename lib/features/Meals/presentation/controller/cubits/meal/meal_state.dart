import 'package:equatable/equatable.dart';

import '../../../../domain/entities/meals_entity.dart';

abstract class MealCubitState extends Equatable {
  const MealCubitState();

  @override
  List<Object> get props => [];
}

 class MealCubitInitial extends MealCubitState {}

 class MealCubitLoading extends MealCubitState {}

 class MealCubitSuccess extends MealCubitState {
final List<Meal> meals;
 const MealCubitSuccess(this.meals);
}

 class MealCubitFailure extends MealCubitState {
final String errorMessage;

const MealCubitFailure(this.errorMessage);
}