import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealy/features/Auth/presentation/widgets/resend_code_section.dart';
import 'package:mealy/features/Auth/presentation/widgets/otp.dart';
import 'package:mealy/features/home/presentation/views/home_view.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/widgets/common_button.dart';
import '../controller/phone_auth_cubit/phone_auth_cubit.dart';
import '../controller/phone_auth_cubit/phone_auth_states.dart';
import '../widgets/auth_header.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});
  static String id="OTPScreen";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AuthHeader(
              title: S.of(context).authHeader3,
              subTitle: S.of(context).authSubTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                 const SizedBox(
                    height: 45,
                  ),
                  Otp(otpController: otpController,),
                  const ResendCode(),
                  const SizedBox(
                    height:55,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthLoggedInState) {
                        Navigator.popUntil(context, (route) => route.isFirst);
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const HomeView(),
                          ),
                        );
                      } else if (state is AuthErrorState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.error),
                            duration: const Duration(milliseconds: 600),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is AuthLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return  CommonButton(
                        txt: S.of(context).continue_text,
                        onPressed: () {
                          BlocProvider.of<AuthCubit>(context).verifyOTP(otpController.text);
                          //Navigator.pushReplacementNamed(context, CompleteUserDataView.id);
                        },
                        radius: 8,
                        high: 54,
                      );
                    },
                  ),
              const SizedBox(
                height:55,
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
