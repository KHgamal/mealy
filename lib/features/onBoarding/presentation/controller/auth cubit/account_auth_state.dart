part of 'account_auth_cubit.dart';

abstract class AccountAuthState {}

class AccountAuthInitial extends AccountAuthState {}

class AccountAuthSuccess extends AccountAuthState {}

class AccountAuthLoading extends AccountAuthState {}

class AccountAuthFailure extends AccountAuthState {
  String errMessage;

  AccountAuthFailure({required this.errMessage});
}
