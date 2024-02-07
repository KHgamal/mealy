import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.2,
          child: SvgPicture.asset(
            Assets.imagesAuthBg,
            fit: BoxFit.fill,
          ),
        ),

        Padding(
          padding: locale.languageCode == 'ar'
              ? const EdgeInsets.only(
                  right: 14,
                )
              : const EdgeInsets.only(
                  left: 14,
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: Styles.textStyleSemiBold32(context),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    Assets.imagesFoodHeaderIcon,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                subTitle,
                style: Styles.textStyleBook16(context).copyWith(
                  color: AllColors.descr,
                ),
              ),
            ],
          ),
        ),
        // ListTile(
        //   title: Text(
        //     title,
        //     style: Styles.textStyleSemiBold32(context),
        //   ),
        //   subtitle: Text(
        //     subTitle,
        //     style: Styles.textStyleBook16(context).copyWith(
        //       color: AllColors.descr,
        //     ),
        //   ),
        //   trailing: Image.asset(
        //     Assets.imagesFoodHeaderIcon,
        //     fit: BoxFit.fill,
        //   ),
        // ),
      ],
    );
  }
}
