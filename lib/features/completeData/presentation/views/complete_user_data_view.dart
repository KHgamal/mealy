import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/completeData/presentation/views/location_type_view.dart';
import 'package:mealy/features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/snack_bar.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../Auth/presentation/widgets/header_title.dart';
import '../widgets/current_page_circle.dart';

class CompleteUserDataView extends StatefulWidget {
  const CompleteUserDataView({super.key, this.phone = false});
  static String id = "CompleteUserDataView";
  final bool phone;

  @override
  State<CompleteUserDataView> createState() => _CompleteUserDataViewState();
}

class _CompleteUserDataViewState extends State<CompleteUserDataView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            HeaderTitle(
              title: S.of(context).complete_Data,
              subTitle: S.of(context).authSubTitle,
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CurrentPageCircle(
                      currentPageIndex: '1',
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    CustomTextField(
                      controller: nameController,
                      initialvalue: Provider.of<UserInfoProvider>(context).name,
                      hintText: S.of(context).userName,
                      prefixIcon: SvgPicture.asset(Assets.imagesPerson),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    widget.phone
                        ? CustomTextField(
                            controller: phoneController,
                            hintText: " +2001554385966",
                            prefixIcon: SvgPicture.asset(
                              Assets.imagesEgypt,
                            ),
                          )
                        : CustomTextField(
                            controller: emailController,
                            hintText: S.of(context).email,
                            prefixIcon: SvgPicture.asset(Assets.imagesMail),
                          ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomTextField(
                      controller: passController,
                      hintText: S.of(context).password,
                      prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                      suffixIcon: true,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomTextField(
                      controller: confirmPassController,
                      hintText: S.of(context).confirmPassword,
                      prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                      suffixIcon: true,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Center(
                      child: CommonButton(
                        txt: S.of(context).next,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(
                                context, LocationTypeView.id);
                            Provider.of<UserInfoProvider>(context,listen :false).name =
                                nameController.text;
                            Provider.of<UserInfoProvider>(context,listen :false).number =
                                phoneController.text;
                          } else {
                            showSnackBar(
                                context, S.of(context).complete_empty_fields);
                          }
                        },
                        radius: 8,
                        high: 54,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
