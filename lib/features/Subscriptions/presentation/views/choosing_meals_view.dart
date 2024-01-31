import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/date_widget.dart';

class ChoosingMealsView extends StatelessWidget {
  const ChoosingMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppBar(),
        const SizedBox(
          height: 46.5,
        ),
        const DateWidget(),
        const Divider(
          height: 42,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'ايام الاشتراك',
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.black),
              )
            ],
          ),
        ),
      ],
    );
  }
}
