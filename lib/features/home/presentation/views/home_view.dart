import 'package:flutter/material.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/toggle_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/plan_list.dart';
import '../widgets/user_info_header.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
static String id="HomeView";
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all( 16),
        child: Column(
              children: [
                UserInfoHeader(user: kUser,),
                const SizedBox(height: 24,),
                AspectRatio(
                    aspectRatio: 343/145,
                    child: Image.asset(Assets.imagesContainer, width: double.infinity,fit: BoxFit.cover,)),
                const SizedBox(height: 24,),
                Text(
                    S.of(context).Choose_the_plan,
                    style:Styles.textStyleMedium18(context)
                ),
                const SizedBox(height: 24,),
                ToggleButton(
                  txt1:  S.of(context).lunch,
                  txt2:  S.of(context).Full_Day,
                ),
                const SizedBox(height: 16,),
                PlanList(),
              ],
            ),

    );
  }
}
