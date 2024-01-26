import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        Expanded(
          child: AspectRatio(
            aspectRatio: 3,
            child: SvgPicture.asset(
              Assets.imagesAuthBg,
              fit: BoxFit.fill,
            ),
          ),
        ),
        ListTile(
          title: Text(
            title,
            style: Styles.textStyleSemiBold32(context),
          ),
          subtitle: Text(
            subTitle,
            style: Styles.textStyleBook16(context).copyWith(
              color: AllColors.descr,
            ),
          ),
          trailing: Image.asset(
            Assets.imagesFoodHeaderIcon,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
