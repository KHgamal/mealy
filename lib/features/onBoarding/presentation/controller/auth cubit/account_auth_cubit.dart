import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'account_auth_state.dart';

class AccountAuthCubit extends Cubit<AccountAuthState> {
  AccountAuthCubit() : super(AccountAuthInitial());
  var auth = FirebaseAuth.instance;
  Future<void> googleLogin() async {
    emit(AccountAuthLoading());
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      auth.signInWithProvider(googleAuthProvider);
      emit(AccountAuthSuccess());
    } catch (e) {
      emit(
        AccountAuthFailure(errMessage: 'Something went wrong try again later'),
      );
    }
  }

  Future<void> facebookLogin() async {
    emit(AccountAuthLoading());
    try {} catch (e) {}
  }
}
