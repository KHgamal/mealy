import 'package:bloc/bloc.dart';

import '../../../../domain/usecases/get_categories_usecase.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryCubitState> {
 CategoryCubit(this.categoriesUseCase) : super(CategoryCubitInitial());

  final GetCategoriesUseCase categoriesUseCase;
  Future<void> fetchCategories() async {
    emit(CategoryCubitLoading());
    var result = await categoriesUseCase.call();
    result.fold((failure) {
      emit(CategoryCubitFailure(failure.message));
    }, (categories) {
      emit(CategoryCubitSuccess(categories));
    });
  }
}