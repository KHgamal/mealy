import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../constant.dart';
class MyMealsView extends StatelessWidget {
  const MyMealsView({super.key});
  static String id="MyMealsView";
  @override
  Widget build(BuildContext context) {
   double width= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: Column(
            children: [
              const MyMealsAppbar(),
              const SizedBox(height:30),
              const PackageDetailsRow(),
              const SizedBox(height: 30),
              PackageDetailsContainer(width: width*0.302),
              const SizedBox(height: 20),
              const MyMealsHeader(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMealsHeader extends StatelessWidget {
  const MyMealsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).my_meals,
          style:Styles.textStyleMedium16(context).copyWith(color:
          AllColors.black)
        ),
        const SizedBox(width: 4),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:AllColors.buttonBgColor,
              shape: BoxShape.circle
          ),
          child: Center(
            child: Text(
              '5',
              style:Styles.textStyleMedium12(context).copyWith(
                color: AllColors.buttonMainColor
              )
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        IconButton(onPressed:(){}, icon: Icon(Icons.refresh,
          color: AllColors.buttonMainColor,)),
        Text(
          S.of(context).change_all_meals,
          style:Styles.textStyleMedium16(context).copyWith(color: AllColors.buttonMainColor)
        ),
      ],
    );
  }
}

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

class PackageDetailsRow extends StatelessWidget {
  const PackageDetailsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).package_details,
          style:Styles.textStyleMedium16(context).copyWith(color:
         AllColors.black )
        ),
        const Expanded(child: SizedBox()),
        const SubscriptionsStartDateContainer(),
      ],
    );
  }
}

class SubscriptionsStartDateContainer extends StatelessWidget {
  const SubscriptionsStartDateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color:AllColors.buttonBgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Text(
        'يبدا الاشتراك يوم 5 ديسمبر',
        style:Styles.textStyleMedium12(context).copyWith(
         color:AllColors.buttonMainColor
        )
      ),
    );
  }
}

class MyMealsAppbar extends StatelessWidget {
  const MyMealsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back, color: AllColors.darkGray,size: 26,),
        const SizedBox(width: 12),
        Text(
          S.of(context).my_meals,
          style:Styles.textStyleSemiBold20(context).copyWith(color:AllColors.darkGray)
        ),
      ],
    );
  }
}
