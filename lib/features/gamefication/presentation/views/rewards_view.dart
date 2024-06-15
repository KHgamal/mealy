import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';

import '../../../../constant.dart';
import '../../../../core/common/widgets/toggle_button.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/coupon_section.dart';
import '../widgets/point_section.dart';

class RewardsView extends StatefulWidget {
  const RewardsView({super.key});

  static String id = "RewardsView";

  @override
  State<RewardsView> createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
              children: [
                CommonCustomAppBar(title: S.of(context).rewards),
                const SizedBox(
                  height: 50,
                ),
                const PointSection(),
                const SizedBox(
                  height: 30,
                ),
                ToggleButton(
                  current: currentIndex,
                  txt1: S.of(context).exchange,
                  txt2: S.of(context).coupon,
                  onToggle: (i) {
                    setState(() {
                      currentIndex = i!;
                    });
                  },
                ),
                currentIndex == 0
                    ? const ExchangeSection()
                    : const Expanded(
                      child: CouponSection( noCoupon: false,),
                    ),
              ],
            )

      ),
    ));
  }
}

class ExchangeSection extends StatefulWidget {
  const ExchangeSection({
    super.key,
  });

  @override
  State<ExchangeSection> createState() => _ExchangeSectionState();
}

class _ExchangeSectionState extends State<ExchangeSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const CounterContainer(),
          const SizedBox(height: 23,),
          Text("${S.of(context).equal} ${balance.toString()} ${S.of(context).pound}",
          style: Styles.textStyleMedium12(context),),
          const Spacer(),
          CommonButton(onPressed: (){
            setState(() {
             balance= counter/40.0;
            });
          },
          radius: 9,txt: S.of(context).exchange,high: 54,),
          const Spacer(flex: 2,),
        ],
      ),
    );
  }
}

class CounterContainer extends StatefulWidget {
  const CounterContainer({
    super.key,
  });

  @override
  State<CounterContainer> createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AllColors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        CounterButton(icon: Icons.add,onPressed: (){setState(() {counter+=40;});},),
        Text(counter.toString(),style: Styles. textStyleSemiBold24(context).copyWith(
          color: AllColors.black ,fontWeight: FontWeight.w500
        ),),
        CounterButton(icon: Icons.remove,onPressed: (){setState(() {counter-=40;});},)
      ],),
    );
  }
}

class CounterButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CounterButton({
    super.key, required this.icon, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
      shape: CircleBorder(
        side: BorderSide(color: AllColors.black , width:1.5)
      ),
      backgroundColor: AllColors.white,
      fixedSize: const Size(26,26)
      ),
      child: Icon(icon , color: AllColors.buttonMainColor,)
    );
  }
}

