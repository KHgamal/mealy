import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../home/presentation/controller/guest_version_provider/guest_version_provider.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonCustomAppBar(title: S.of(context).profile),
              const SizedBox(height: 24,),
              const ImageContainer(),
              const SizedBox(height: 24,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(11),
                border: Border.all(color: AllColors.tfBorder)
                ),
                child: Row(children: [
                  const Icon(Icons.account_box,size: 32, ),
                  const SizedBox(width: 8,),
                  Text(  Provider.of<UserInfoProvider>(context).name ??
                  S.of(context).userName,style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.mainText),)
                ],),
              )
              , Row(
                children: [
                  Icon(Icons.info_outline, color: AllColors.buttonMainColor,),
                  const SizedBox(width: 8,),
                  Text(S.of(context).delete_account,style: Styles.textStyleMedium12(context)
                  .copyWith(color: AllColors.buttonMainColor),)
                ],
               ),
              const Spacer(),
              CommonButton(onPressed: (){},radius: 9,txt: S.of(context).update,high: 54,)
               ],
          ),
        ),
      ),
    );

  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 90,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(24.15) ,
       image: DecorationImage(image: Provider.of<GuestProvider>(context).guest ?
          const AssetImage(Assets.imagesNoUser)
              : Provider.of<UserInfoProvider>(context).image =="null" ?const AssetImage(Assets.imagesNoUser) as ImageProvider
          : NetworkImage(Provider.of<UserInfoProvider>(context).image!)
       ), ),
       child:const HoverContainer(),
    
    );
  }
}

class HoverContainer extends StatelessWidget {
  const HoverContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 88,
     width: 90,
     decoration: BoxDecoration(
     borderRadius:BorderRadius.circular(24.15) ,
     color: Colors.black.withOpacity(0.59),),
    child: IconButton(onPressed: (){},color: Colors.white,iconSize: 30,
    icon:const  Icon(Icons.edit_outlined)),);
  }
}