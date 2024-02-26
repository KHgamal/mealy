import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int activeIndex=1;
  @override
  Widget build(BuildContext context) {
    List stepperList = [
      {
        "title":"${S.of(context).level} 1",
        "subTitle":  S.of(context).basic,
      },
      {
        "title":"${S.of(context).level} 2",
        "subTitle":  S.of(context).bronzeClient,
      },
      {
        "title":"${S.of(context).level} 3",
        "subTitle":  S.of(context).silverClient,
      },
      {
        "title":"${S.of(context).level} 4",
        "subTitle":  S.of(context).goldClient,
      },
      {
        "title":"${S.of(context).level} 5",
        "subTitle":  S.of(context).PlatinumClient,
      },
      {
        "title":"${S.of(context).level} 6",
        "subTitle":  S.of(context).elite,
      },
    ];
    return AnotherStepper(
      stepperList:List<StepperData>.generate(
        stepperList.length, (i) => StepperData(
          iconWidget: StepperContainer(
            color: i < activeIndex ? AllColors.buttonMainColor : AllColors.gray ,
          ),
          title: StepperText(
            stepperList[i]["title"],
            textStyle:Styles.textStyleBook12(context)
          ),
          subtitle: StepperText(stepperList[i]["subTitle"],
              textStyle:Styles.textStyleSemiBold14(context)),
        ),
      ),
      stepperDirection: Axis.vertical,
      verticalGap: MediaQuery.sizeOf(context).height * 0.03297,
      activeBarColor: AllColors.buttonMainColor,
      inActiveBarColor: AllColors.gray,
      iconHeight: MediaQuery.sizeOf(context).height * 0.091,
      iconWidth: MediaQuery.sizeOf(context).width * 0.19433333333,
      activeIndex: activeIndex,
    );
  }
}

class StepperContainer extends StatelessWidget {
  const StepperContainer({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.02875,
        horizontal: MediaQuery.sizeOf(context).width * 0.044,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: color),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SvgPicture.asset(Assets.imagesCompetition),
    );
  }
}
