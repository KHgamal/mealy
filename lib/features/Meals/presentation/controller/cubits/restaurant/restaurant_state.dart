import 'package:equatable/equatable.dart';

import '../../../../domain/entities/restaurant_entity.dart';

abstract class RestaurantCubitState extends Equatable {
  const RestaurantCubitState();

  @override
  List<Object> get props => [];
}

class RestaurantCubitInitial extends RestaurantCubitState {}

class RestaurantCubitLoading extends RestaurantCubitState {}

class RestaurantCubitSuccess extends RestaurantCubitState {
  final List<Restaurant> restaurants;
  const RestaurantCubitSuccess(this.restaurants);
}
class RestaurantCubitFailure extends RestaurantCubitState {
  final String errorMessage;

  const RestaurantCubitFailure(this.errorMessage);
}