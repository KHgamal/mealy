import 'package:equatable/equatable.dart';

import '../../../../domain/entities/categories_entity.dart';

abstract class CategoryCubitState extends Equatable {
  const CategoryCubitState();

  @override
  List<Object> get props => [];
}

class CategoryCubitInitial extends CategoryCubitState {}

class CategoryCubitLoading extends CategoryCubitState {}

class CategoryCubitSuccess extends CategoryCubitState {
  final List<Category> categories;
  const CategoryCubitSuccess(this.categories);
}

class CategoryCubitFailure extends CategoryCubitState {
  final String errorMessage;

  const CategoryCubitFailure(this.errorMessage);
}