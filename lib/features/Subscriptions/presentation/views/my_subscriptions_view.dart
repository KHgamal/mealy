import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';

import '../../../../generated/l10n.dart';
import '../widgets/no_subscriptions_yet_section.dart';
import '../widgets/options_list.dart';
import 'choosing_meals_view.dart';

class MySubscriptionsView extends StatelessWidget {
  const MySubscriptionsView({super.key});
  static String id = "MySubscriptionsView";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(S.of(context).My_subscriptions,
                  style: Styles.textStyleSemiBold16(context)
                      .copyWith(color: AllColors.black)),
            ),
            const SizedBox(
              height: 40,
            ),
            const NoSubscriptionYetSection(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 319,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Text(S.of(context).no_subscriptions_yet_description,
                    textAlign: TextAlign.center,
                    style: Styles.textStyleBook16(context)
                        .copyWith(color: AllColors.descr)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              color: AllColors.gray,
              endIndent: 40,
              indent: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const OptionsList(),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(S.of(context).note,
                  style: Styles.textStyleMedium12(context)
                      .copyWith(color: AllColors.descr)),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CommonButton(
                txt: S.of(context).subscribe_now,
                onPressed: () =>
                    Navigator.pushNamed(context, ChoosingMealsView.id),
                radius: 8,
                high: 54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
