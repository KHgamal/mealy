import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';

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
          padding:Provider.of<AppLanguage>(context , listen:false).locale == const Locale('en')
              ? const EdgeInsets.only(
            left: 14
          )
              : const EdgeInsets.only(
                  right: 14,
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
      ],
    );
  }
}
