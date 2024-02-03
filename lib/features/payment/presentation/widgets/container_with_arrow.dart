import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';

class ContainerWithArrow extends StatelessWidget {
  const ContainerWithArrow(
      {super.key,
      required this.image,
      required this.title,
      required this.icon,
      required this.textColor,
      this.time = false,
      this.timeTxt});

  final String image;
  final String title;
  final IconData icon;
  final Color textColor;
  final bool time;
  final String? timeTxt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48,
        decoration: ShapeDecoration(
          color: AllColors.white,
          shape: RoundedRectangleBorder(
            side: time
                ? BorderSide.none
                : const BorderSide(
                    width: 1,
                    color: Color(0XFFF0F0F0),
                  ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // child: time
          //     ? Row(
          //         children: [
          //           SvgPicture.asset(image),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           Text(
          //             title,
          //             style: Styles.textStyleMedium16(context)
          //                 .copyWith(color: textColor),
          //           ),
          //           const Expanded(
          //             flex: 2,
          //             child: Spacer(),
          //           ),
          //           Text(
          //             timeTxt!,
          //             style: Styles.textStyleBook14(context)
          //                 .copyWith(color: AllColors.buttonMainColor),
          //           ),
          //           const Expanded(
          //             flex: 1,
          //             child: Spacer(),
          //           ),
          //           Icon(icon),
          //         ],
          //       )
          //     :
          child: Row(
            children: [
              SvgPicture.asset(image),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: textColor),
              ),
              const Spacer(),
              const Spacer(),
              // const Expanded(
              //   flex: 2,
              //   child: Spacer(),
              // ),
              Text(
                timeTxt ?? '',
                style: Styles.textStyleBook14(context)
                    .copyWith(color: AllColors.buttonMainColor),
              ),
              const Spacer(),
              // const Expanded(
              //   flex: 1,
              //   child: Spacer(),
              // ),
              Icon(icon),
            ],
          ),
        ),
      ),
    );
  }
}
