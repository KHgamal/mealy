import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';
import '../controller/date controller/date_provider.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/date_time_line.dart';
import '../widgets/date_widget.dart';
import '../widgets/meal_item.dart';
import '../widgets/switch_row.dart';

class ChoosingMealsView extends StatelessWidget {
  const ChoosingMealsView({super.key});
  static String id = "ChoosingMealsView";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const CustomAppBar(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05477,
              ),
              const DateWidget(),
              Divider(
                height: MediaQuery.sizeOf(context).height * 0.049469,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).subscriptionDays,
                    style: Styles.textStyleMedium16(context)
                        .copyWith(color: AllColors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(Assets.imagesSchedule),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const DateTimeLine(),
              const SizedBox(
                height: 16,
              ),
              const SwitchRow(),
              const SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).categories,
                    style: Styles.textStyleMedium16(context)
                        .copyWith(color: AllColors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(Assets.imagesFoodHeaderIcon),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CategoriesListView(),
              const SizedBox(
                height: 20,
              ),
              const MealItem(),
            ],
          ),
        ),
      ),
    );
  }
}
