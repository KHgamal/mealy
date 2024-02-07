import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/pink_button.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../../../Auth/presentation/widgets/header_title.dart';
import '../widgets/current_page_circle.dart';
import '../widgets/which_location_section.dart';
import 'location_details_view.dart';

class LocationTypeView extends StatelessWidget {
  const LocationTypeView({super.key});
  static String id="LocationTypeView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HeaderTitle(
              title:S.of(context).complete_Data,
              subTitle: S.of(context).authSubTitle ,
            ),
            const SizedBox(height:25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CurrentPageCircle(currentPageIndex: '2',),
                  const SizedBox(height: 45,),
                  const TypeSection(),
                  const SizedBox(height: 45,),
                  CommonButton(txt:S.of(context).next,
                      onPressed:()=>Navigator.pushReplacementNamed(context,
                          LocationDetailsView.id,) ,radius:8),
                  const SizedBox(height: 12,),
                  PinkButton(txt: S.of(context).Find_my_current_location, onPressed:(){},
                    radius: 9,icon: true,width: double.infinity,high:54 ,
                  style:  Styles.textStyleMedium16(context).copyWith(color: AllColors.buttonMainColor) ,)
                ],
              ),
            ),

          ],
        ) ,
      ),
    );
  }
}



