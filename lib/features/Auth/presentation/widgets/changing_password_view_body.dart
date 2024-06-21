import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/Auth/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/Auth/presentation/widgets/auth_header.dart';

import '../../../../core/common/widgets/snack_bar.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class ChangingPasswordViewBody extends StatefulWidget {
  const ChangingPasswordViewBody({super.key});

  @override
  State<ChangingPasswordViewBody> createState() =>
      _ChangingPasswordViewBodyState();
}

class _ChangingPasswordViewBodyState extends State<ChangingPasswordViewBody> {
  final formKey = GlobalKey<FormState>();
  // TextEditingController passController = TextEditingController();
  // TextEditingController confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AuthHeader(
            title: S.of(context).authHeader4,
            subTitle: S.of(context).authSubTitle),
        const SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
            listener: (context, state) {
              if (state is ResetPasswordSuccess) {
                Navigator.pushReplacementNamed(context, LoginView.id);
              }
              if (state is ResetPasswordFailure) {
                showSnackBar(context, state.error);
              }
            },
            builder: (context, state) {
              final cubit = BlocProvider.of<ResetPasswordCubit>(context);
              if (state is ResetPasswordLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: cubit.passwordController,
                      hintText: S.of(context).password,
                      prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                      suffixIcon: true,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomTextField(
                      controller: cubit.confirmPasswordController,
                      hintText: S.of(context).confirmPassword,
                      prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                      suffixIcon: true,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CommonButton(
                      txt: S.of(context).confirm,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.resetPassword();
                        } else {
                          showSnackBar(context, S.of(context).weak_password);
                        }
                      },
                      radius: 8,
                      high: 54,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
