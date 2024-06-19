import 'package:bloc/bloc.dart';
import 'package:mealy/features/Meals/presentation/controller/cubits/restaurant/restaurant_state.dart';

import '../../../../domain/usecases/get_restaurant_usecase.dart';

class RestaurantCubit extends Cubit<RestaurantCubitState> {
  RestaurantCubit(this.restaurantUseCase) : super(RestaurantCubitInitial());

  final GetRestaurantUseCase restaurantUseCase;
  Future<void> fetchRestaurants() async {
    emit(RestaurantCubitLoading());
    var result = await restaurantUseCase.call();
    result.fold((failure) {
      emit(RestaurantCubitFailure(failure.message));
    }, (restaurant) {
      emit(RestaurantCubitSuccess(restaurant));
    });
  }
}