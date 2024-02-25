import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/toggle_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/reward_coupon_container.dart';
class RewardsView extends StatefulWidget {
  const RewardsView({super.key});

  @override
  State<RewardsView> createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12 , horizontal: 16),
        child: Column(
          children: [
            CommonCustomAppBar(title: S.of(context).rewards),
            const SizedBox(height: 50,),
            const PointSection(),
            const SizedBox(height: 30,),
            ToggleButton(
               current:currentIndex ,
               txt1: S.of(context).exchange,
               txt2: S.of(context).coupon ,
               onToggle:(i){
                setState(() {
                  currentIndex=i!;
                });
               },
            ),
            currentIndex==0? const SizedBox(height: 30,):
            const CouponSection(noCoupon: false,)
          ],
        ),
      ),
    ));
  }
}

class PointSection extends StatelessWidget {
  const PointSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesCoinBag , width: 36,height: 51,),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("0 ${S.of(context).point}",style: Styles.textStyleBold18(context),),
            const SizedBox(height: 8,),
            Text(S.of(context).more_order_more_points,style: Styles.textStyleMedium12(context)
              .copyWith(color: AllColors.descr),),
          ],
        )
      ],
    );
  }
}

class CouponSection extends StatelessWidget {
  const CouponSection({super.key, required this.noCoupon});
  final bool noCoupon;
  @override
  Widget build(BuildContext context) {
    return noCoupon? Expanded(
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(Assets.imagesGift,width: 152, ),
          const SizedBox(height: 24,),
          Text(S.of(context).No_coupons_yet,style: Styles.textStyleSemiBold16(context)
              .copyWith(color: AllColors.disabledText),),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    ): Column(
      children: [
        const SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const AspectRatio(
                      aspectRatio:1.5,
                      child:  RewardsCouponContainer()),
                  const SizedBox(height: 13,),
                  Text(
                    "${S.of(context).purchase_voucher_worth} 100 جنيه",
                    style: Styles.textStyleSemiBold12(context),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Column(
                children: [
                  const AspectRatio(
                      aspectRatio:1.5,
                      child:  RewardsCouponContainer()),
                  const SizedBox(height: 13,),
                  Text(
                    "${S.of(context).purchase_voucher_worth} 100 جنيه",
                    style: Styles.textStyleSemiBold12(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

