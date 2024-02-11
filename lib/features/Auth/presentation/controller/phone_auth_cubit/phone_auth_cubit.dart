import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealy/features/Auth/presentation/controller/phone_auth_cubit/phone_auth_states.dart';

//Depending on your billing plan, you might be limited to a daily quota of SMS messages sent.
// See Firebase Auth Limits.

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthCubit() : super(AuthInitialState());

  String? verificationID;

  void sendOTP(String phoneNumber) async {
    emit(AuthLoadingState());

    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,

// This method is used to verify that the user-provided phone number belongs to the user.
// Firebase sends a code via SMS message to the phone number, where you must then prompt the user to enter the code.
// The code can be combined with the verification ID to create a PhoneAuthProvider.credential
// which you can then use to sign the user in, or link with their account ( see signInWithCredential or linkWithCredential).
      codeSent: (verificationId, forceResendingToken) {
        verificationID = verificationId;
        emit(AuthCodeSentState());
      },
      verificationCompleted: (phoneAuthCredential) {
        signInWithPhone(phoneAuthCredential);
      },
      verificationFailed: (error) {
        emit(AuthErrorState(error.message.toString()));
      },//Handle a timeout of when automatic SMS code handling fails
      codeAutoRetrievalTimeout: (verificationId) {
        verificationID = verificationId;
      },
    );
  }

  void verifyOTP(String otp) async {
    emit(AuthLoadingState());

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID!, smsCode: otp);
    signInWithPhone(credential);
  }

  void signInWithPhone(AuthCredential credential) async {
    try {
      UserCredential userCredential =
      await _firebaseAuth.signInWithCredential(credential);

      if (userCredential.user != null) {
        emit(AuthLoggedInState(userCredential.user!));
      }
    } on FirebaseAuthException catch (ex) {
      emit(AuthErrorState(ex.message.toString()));
    }
  }

  void logOut() async {
    emit(AuthLoggedOutState());
    _firebaseAuth.signOut();
  }
}