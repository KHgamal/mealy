import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/generated/assets.dart';

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
                  Image.asset(Assets.imagesBanner),
                  SizedBox(
                    width: 168,
                    child: Text(
                      'لقد تم استكمال البيانات بنجاح',
                      style: Styles.textStyleMedium18(context),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  CommonButton(
                    txt: 'let\'s start',
                    style: Styles.textStyleSemiBold14(context)
                        .copyWith(color: AllColors.white),
                    onPressed: () {},
                    radius: 10,
                    high: 41,
                    width: 168,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
