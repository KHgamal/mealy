part of 'register_cubit_cubit.dart';

sealed class RegisterCubitState extends Equatable {
  const RegisterCubitState();

  @override
  List<Object> get props => [];
}

final class RegisterCubitInitial extends RegisterCubitState {}

final class RegisterCubitLoading extends RegisterCubitState {}

final class RegisterCubitSuccess extends RegisterCubitState {}

final class RegisterCubitFailure extends RegisterCubitState {
  final String errorMessage;

  const RegisterCubitFailure(this.errorMessage);
}
