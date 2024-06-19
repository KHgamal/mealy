part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String displayName;
  final String email;
  final String phoneNumber;

  const LoginSuccess({
    required this.displayName,
    required this.email,
    required this.phoneNumber,
  });
}

class LoginFailure extends LoginState {
  final String error;

  const LoginFailure({required this.error});
}
