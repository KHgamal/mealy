import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';
import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
class PackageDetailsContainer extends StatelessWidget {
  const PackageDetailsContainer({
  super.key,
  required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 25),
      decoration: ShapeDecoration(
        color:AllColors.packageContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  packageDetailsList[0].planTitle,
                  style:Styles.textStyleSemiBold16(context).copyWith(
                      color: AllColors.black
                  )
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    Assets.imagesFoodHeaderIcon,
                  ),
                  const SizedBox(width: 5),
                  Text(
                      packageDetailsList[0].planType,
                      style:Styles.textStyleMedium14(context).copyWith(
                          color: AllColors.black
                      )
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    Assets.imagesFoodHeaderIcon,
                  ),
                  const SizedBox(width: 5),
                  Text(
                      packageDetailsList[0].category,
                      style:Styles.textStyleMedium14(context).copyWith(
                          color: AllColors.buttonMainColor
                      )
                  ),
                  const SizedBox(width: 5),
                  Text(
                      packageDetailsList[0].planDays,
                      style:Styles.textStyleMedium14(context).copyWith(
                          color: AllColors.black
                      )
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                  packageDetailsList[0].planLimitation,
                  style:Styles.textStyleBook12(context)
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          SvgPicture.asset(Assets.imagesMeals, width:width ,)
        ],
      ),
    );
  }
}