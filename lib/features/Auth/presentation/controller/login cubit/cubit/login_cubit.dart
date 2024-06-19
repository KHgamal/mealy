import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mealy/features/Auth/data/data%20source/login_remote.dart';
import 'package:mealy/features/Auth/data/repository/login_repo.dart';
import 'package:mealy/features/Auth/domain/repository/login_base_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> performLogin(String email, String password) async {
    final LoginRemote remoteDataSource = LoginRemote();
    final LoginBaseRepository loginrepo =
        LoginRepository(remoteDataSource: remoteDataSource);
    emit(LoginLoading());

    try {
      final userEntity = await loginrepo.loginUser(email, password);
      emit(LoginSuccess(
        displayName: userEntity.displayName,
        email: userEntity.email,
        phoneNumber: userEntity.phoneNumber,
      ));
    } catch (e) {
      emit(const LoginFailure(error: 'Failed to login. Please try again.'));
    }
  }
}
