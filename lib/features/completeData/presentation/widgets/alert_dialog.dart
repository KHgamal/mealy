import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/bottom_navigation_bar.dart';
import '../../../../generated/l10n.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: AllColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
        ),
        // title: SvgPicture.asset(Assets.imagesExitIcon),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: SvgPicture.asset(Assets.imagesExitIcon),
              onTap: () => Navigator.of(context).pop(),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.imagesBanner,
                    width: 67,
                    height: 67,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.448,
                    child: Text(
                      S.of(context).dataCompleted,
                      style: Styles.textStyleMedium18(context),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  CommonButton(
                    txt: S.of(context).letsStart,
                    style: Styles.textStyleSemiBold14(context)
                        .copyWith(color: AllColors.white),
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, CustomBottomNavigationBar.id),
                    radius: 10,
                    high: 41,
                    width: MediaQuery.sizeOf(context).width * 0.448,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
