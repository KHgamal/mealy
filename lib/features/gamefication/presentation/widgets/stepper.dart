import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperList = [
      StepperData(
        title: StepperText(
          "${S.of(context).level} 1",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).basic,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
      StepperData(
        title: StepperText(
          "${S.of(context).level} 2",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).bronzeClient,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
      StepperData(
        title: StepperText(
          "${S.of(context).level} 3",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).silverClient,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
      StepperData(
        title: StepperText(
          "${S.of(context).level} 4",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).goldClient,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
      StepperData(
        title: StepperText(
          "${S.of(context).level} 5",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).PlatinumClient,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
      StepperData(
        title: StepperText(
          "${S.of(context).level} 6",
          textStyle: Styles.textStyleBook12(context),
        ),
        subtitle: StepperText(
          S.of(context).elite,
          textStyle: Styles.textStyleSemiBold14(context),
        ),
        iconWidget: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02875,
            horizontal: MediaQuery.sizeOf(context).width * 0.044,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AllColors.gray),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesCompetition),
        ),
      ),
    ];
    return AnotherStepper(
      stepperList: stepperList,
      stepperDirection: Axis.vertical,
      verticalGap: MediaQuery.sizeOf(context).height * 0.03297,
      activeBarColor: AllColors.buttonMainColor,
      inActiveBarColor: AllColors.gray,
      iconHeight: MediaQuery.sizeOf(context).height * 0.091,
      iconWidth: MediaQuery.sizeOf(context).width * 0.19433333333,
      activeIndex: 1,
    );
  }
}
