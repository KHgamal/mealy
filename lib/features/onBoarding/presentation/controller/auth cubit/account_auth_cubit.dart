import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

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
        AccountAuthFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> facebookLogin() async {
    emit(AccountAuthLoading());
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      auth.signInWithCredential(facebookAuthCredential);
      emit(AccountAuthSuccess());
    } catch (e) {
      emit(
        AccountAuthFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
