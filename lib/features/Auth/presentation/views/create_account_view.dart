import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/Auth/presentation/views/otp_view.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../profile/presentation/controller/user_info_provider/user_info_provider.dart';
import '../controller/phone_auth_cubit/phone_auth_cubit.dart';
import '../controller/phone_auth_cubit/phone_auth_states.dart';
import '../widgets/auth_header.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});
  static String id = "CreateAccountView";

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AuthHeader(
              title: S.of(context).authHeader2,
              subTitle: S.of(context).authSubTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 45,
                    ),
                    CustomTextField(
                        controller: phoneController,
                        hintText: " +2001554385966",
                        prefixIcon: SvgPicture.asset(
                          Assets.imagesEgypt,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthCodeSentState) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const OTPScreen(),
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
                        return CommonButton(
                          txt: S.of(context).continuation,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              String phoneNumber = "+20${phoneController.text}";
                              BlocProvider.of<AuthCubit>(context)
                                  .sendOTP(phoneNumber);
                              Provider.of<UserInfoProvider>(context,
                                      listen: false)
                                  .number = phoneNumber;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(S.of(context).signUp_failed)),
                              );
                            }
                          },
                          radius: 8,
                          high: 54,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    WhiteButton(
                      txt: S.of(context).already_have_an_account,
                      onPressed: () =>
                          Navigator.pushReplacementNamed(context, LoginView.id),
                      high: 54,
                      style: Styles.textStyleMedium16(context)
                          .copyWith(color: AllColors.disabledText),
                      radius: 10,
                      border: false,
                      subTxt: S.of(context).login,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
