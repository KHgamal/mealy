import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/auth_button.dart';
import '../../../../core/common/widgets/bottom_navigation_bar.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../../../../core/common/widgets/snack_bar.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../Auth/presentation/views/create_account_view.dart';
import '../../../Auth/presentation/views/login_view.dart';
import '../controller/auth cubit/account_auth_cubit.dart';

class AuthenticationType extends StatefulWidget {
  const AuthenticationType({super.key});

  @override
  State<AuthenticationType> createState() => _AuthenticationTypeState();
}

class _AuthenticationTypeState extends State<AuthenticationType> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountAuthCubit, AccountAuthState>(
      listener: (context, state) {
        if (state is AccountAuthLoading) {
          isLoading = true;
        } else if (state is AccountAuthSuccess) {
          Navigator.of(context).pushNamed(CustomBottomNavigationBar.id);
          isLoading = false;
        } else if (state is AccountAuthFailure) {
          showSnackBar(context, state.errMessage);
          log(state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Center(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.046,
                      ),
                      CommonButton(
                        txt: S.of(context).createNewAccount,
                        onPressed: () => Navigator.of(context)
                            .pushNamed(CreateAccountView.id),
                        radius: 9,
                        high: 54,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.0123,
                      ),
                      PinkButton(
                        style: Styles.textStyleMedium16(context)
                            .copyWith(color: AllColors.buttonMainColor),
                        txt: S.of(context).login,
                        onPressed: () =>
                            Navigator.of(context).pushNamed(LoginView.id),
                        radius: 9,
                        high: 54,
                        // width: MediaQuery.sizeOf(context).width * 0.9,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.0295,
                      ),
                      Text(
                        S.of(context).loginType,
                        style: Styles.textStyleMedium16(context),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.0258,
                      ),
                      AuthButton(
                          txt: S.of(context).faceLogin,
                          onPressed: () =>
                              BlocProvider.of<AccountAuthCubit>(context)
                                  .facebookLogin(),
                          image: Assets.imagesFacebookIcon),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.0123,
                      ),
                      AuthButton(
                          txt: S.of(context).googleLogin,
                          onPressed: () =>
                              BlocProvider.of<AccountAuthCubit>(context)
                                  .googleLogin(),
                          image: Assets.imagesGoogleIcon),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, CustomBottomNavigationBar.id),
                        child: Text(S.of(context).visitorLogin,
                            style: Styles.textStyleMedium16(context)
                                .copyWith(color: AllColors.buttonMainColor)),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.0295,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
