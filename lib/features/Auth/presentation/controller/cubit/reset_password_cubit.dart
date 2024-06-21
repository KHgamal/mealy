import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mealy/constant.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ResetPasswordCubit() : super(ResetPasswordInitial());

  Future<void> resetPassword() async {
    final String newPassword = passwordController.text;
    final String confirmedPassword = confirmPasswordController.text;

    final Uri uri = Uri.parse(
      '$baseUrl/api/Account/resetPassword'
      '?NewPassword=$newPassword&ConfirmPassword=$confirmedPassword',
    );

    emit(ResetPasswordLoading());

    try {
      final response = await http.post(uri);

      if (response.statusCode == 200) {
        emit(ResetPasswordSuccess());
      } else {
        emit(const ResetPasswordFailure(
            error: 'Failed to reset password. Please try again.'));
      }
    } catch (e) {
      emit(ResetPasswordFailure(error: e.toString()));
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
