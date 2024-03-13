import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mealy/features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'package:provider/provider.dart';

part 'account_auth_state.dart';

class AccountAuthCubit extends Cubit<AccountAuthState> {
  AccountAuthCubit() : super(AccountAuthInitial());
  var auth = FirebaseAuth.instance;
  Future<void> googleLogin(BuildContext context) async {
    emit(AccountAuthLoading());
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
      // GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      // await auth.signInWithProvider(googleAuthProvider);
      emit(
        AccountAuthSuccess(),
      );
      // Provider.of<UserInfoProvider>(context).name = googleUser?.displayName;
      // Provider.of<UserInfoProvider>(context).image = googleUser?.photoUrl;
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
