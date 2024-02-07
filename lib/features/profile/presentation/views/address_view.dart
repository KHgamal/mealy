import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
class AddressView extends StatelessWidget {
  const AddressView({super.key, required this.noAddressProvided});
  static String id="AddressView";
final bool noAddressProvided;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: Column(
            children: [
              CommonCustomAppBar(title: S.of(context).theAddresses),
              noAddressProvided?
                  Expanded(
                    child: Column(
                      children: [
                       const Expanded(child: SizedBox()),
                       AspectRatio(
                         aspectRatio :244.25/246 ,
                         child: SvgPicture.asset(Assets.imagesNoLocation)),
                       const SizedBox(height: 32,),
                       SizedBox(
                            width:243,
                            height: 34,
                            child: Text(S.of(context).no_addresses_yet,
                            textAlign: TextAlign.center,style:Styles.textStyleBook14(context)
                              .copyWith(color: AllColors.subtitleColor),)),
                       const Expanded(
                            child: SizedBox()),
                       CommonButton(txt: S.of(context).Add_a_new_address,
                            onPressed: (){}, radius: 12)
                      ],
                    ),
                  ):
                  Expanded(
                    child: Column(
                children: [
                    const  AddressContainer(),
                    const Expanded(
                        child: SizedBox()),
                    CommonButton(txt: S.of(context).Add_a_new_address,
                        onPressed: (){}, radius: 12),
                ],
              ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding:const EdgeInsets.all(12) ,
      margin:const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xff17181A).withOpacity(0.06))
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesHomeIcon),
          const SizedBox(width: 8,),
          Text(S.of(context).home_location,style: Styles.textStyleMedium16(context)
            .copyWith(color: AllColors.darkGray),),
          const Expanded(child: SizedBox()),
          SvgPicture.asset(Assets.imagesTrash),
        ],
      ),
    );
  }
}
