import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/button_with_image.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/l10n.dart';
import 'meal_details.dart';

class MealsDetailsContainer extends StatefulWidget {
  const MealsDetailsContainer({
    super.key,
    this.mealPage = true,
  });
  final bool mealPage;

  @override
  State<MealsDetailsContainer> createState() => _MealsDetailsContainerState();
}

class _MealsDetailsContainerState extends State<MealsDetailsContainer> {
  bool chosen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 36.5),
      padding: const EdgeInsets.only(top: 50, right: 8, left: 8, bottom: 20),
      decoration: BoxDecoration(
          color: AllColors.white, borderRadius: BorderRadius.circular(10)),
      child: widget.mealPage
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MealDetails(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ButtonWithImage(
                            height: 43,
                            widget: SvgPicture.asset(
                                Assets.imagesArrowSwapHorizontal),
                            txt: S.of(context).change_meal,
                            onPressed: () {},
                            radius: 8)),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {},
                        txt: S.of(context).day_off,
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MealDetails(),
                chosen
                    ? CommonButton(
                        onPressed: () {},
                        txt: S.of(context).chosen,
                        radius: 8,
                        //width: MediaQuery.sizeOf(context).width * 0.2106,
                        //high: 34,
                        style: Styles.textStyleMedium12(context)
                            .copyWith(color: AllColors.white),
                      )
                    : WhiteButton(
                        txt: S.of(context).chooceTheMeal,
                        onPressed: () {
                          setState(() {
                            chosen = true;
                          });
                        },
                        high: 34,
                        //width: MediaQuery.sizeOf(context).width * 0.2106,
                        radius: 8,
                        style: Styles.textStyleMedium12(context),
                      ),
              ],
            ),
    );
  }
}
