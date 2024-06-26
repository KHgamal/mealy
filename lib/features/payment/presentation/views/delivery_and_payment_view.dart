import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/features/payment/presentation/widgets/container_with_arrow.dart';
import 'package:mealy/generated/assets.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
import '../widgets/address_container.dart';
import '../widgets/amount_container.dart';
import '../widgets/coupon_container.dart';
import '../widgets/payment_container.dart';

class DeliveryAndPaymentView extends StatelessWidget {
  const DeliveryAndPaymentView({super.key, this.mealsNum = 1});
  final int mealsNum;
  static String id = "DeliveryAndPaymentView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonCustomAppBar(
                            title: S.of(context).deliveryAndPayment),
                        const SizedBox(
                          height: 24,
                        ),
                        const AddressContainer(),
                        const SizedBox(
                          height: 24,
                        ),
                        // Expanded(
                        //   child: ListView.builder(
                        //     shrinkWrap: true,
                        //     physics: const NeverScrollableScrollPhysics(),
                        //     itemCount: mealsNum,
                        //     itemBuilder: (context, index) {
                        //       return ContainerWithArrow(
                        //         image: Assets.imagesTimeIcon,
                        //         title: 'Meal ${index + 1}',
                        //         icon: Icons.arrow_forward_ios_outlined,
                        //         textColor: AllColors.mainText,
                        //         time: true,
                        //         timeTxt: '12:00 م - 01:00 م',
                        //       );
                        //     },
                        //   ),
                        // ),
                        ContainerWithArrow(
                          image: Assets.imagesTimeIcon,
                          title: S.of(context).timeOfReceipt,
                          icon: Icons.arrow_forward_ios_outlined,
                          textColor: AllColors.mainText,
                          time: true,
                          timeTxt: '12:00 م - 01:00 م',
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const PaymentContainer(),
                        const SizedBox(
                          height: 48,
                        ),
                        const CouponContainer(),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  AmountContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
