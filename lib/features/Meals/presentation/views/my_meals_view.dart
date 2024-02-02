import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../constant.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../widgets/my_meals_appbar.dart';
import '../widgets/my_meals_header.dart';
import '../widgets/package_details_container.dart';
import '../widgets/package_details_row.dart';
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
          child: ListView(
            children: [
              const MyMealsAppbar(),
              const SizedBox(height:30),
              const PackageDetailsRow(),
              const SizedBox(height: 30),
              PackageDetailsContainer(width: width*0.302),
              const SizedBox(height: 20),
              const MyMealsHeader(),
              const SizedBox(height: 20),
              Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage("https://s3-alpha-sig.figma.com/img/dbb5/f934/23da0e9cdb41444b2d48c2e03adf6805?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S75LLf5vTE9oM1Htb7DHm0h4rvr4M3-upOTQoHm7Mz-VGsbRyQlw3vSR39LSYSHzbBsTk61KM6ZBwausXs87yvQHSy5ZagU2lCa-IrLQc~8T0dvBNzA6yCGQ3zvA-sAyvRLQNt0sqx-2GRA29IFytKGFgvswId~sDt1D6NfB5AG9r5riBP9f~vwQ8MtLBhn7wPG65Y2DDNu-duO7vqMG2WkFIeJh6-obOUFVpRHcPmmOoBCMUtDIkMcUPbqDsc7UdU9nJWZU2n1Ah2z61-wjwdSmKBCPNUtYkCvZ44WPVH4HGHpUrGb5bo~~p~mw3ZC4hDORzioiBJDuTabsQlw1sw__", )
                 ,fit: BoxFit.cover ),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12 ,top:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PinkButton(onPressed: (){},radius: 9,width: 117,txt: "الاحد,5ديسمبر"),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      MealsDetailsContainer(),
                      Restaurant(),
                    ],
                  )
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Restaurant extends StatelessWidget {
  const Restaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height:73,
      margin: const EdgeInsets.only(right: 8),
      decoration:BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://s3-alpha-sig.figma.com/img/6529/d6b1/b04bde37a98a515cf3dff4c7ec8ff024?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cqdJZkjCzxfmAyj01lYGAxBQPqYvZO~JahBBJ4F18fLGSlneA-J0p1~~7VvLG7Ke9Unei5nxgsPiFKTcS7ht~nv0hWWn5PHGR0iiRDzs6c2Jl~BUMi3TyL1~upADYaikSZSRgVD4W-xe8txF1mVZiMB69f2FlHsOrHoqduU~k2N1A5HN1mNprDoGt8-l7xz3z~TQzjlnaI6uNoYC8355BCwOTM2SqK0JirRBBcUEfv7lwKOv2OIFmDDvERMjLz1gNeTPhkvOeXHTZyXRiNPDqLPbcyGm5pWf~cTUZbiCfAxs1nv-0zwP28wC0NlSA4dBQ3i2lABoX5TPBDq5Q2-fnA__"),
              fit: BoxFit.fitWidth
          ),
          shape: BoxShape.circle
      ),
    );
  }
}

class MealsDetailsContainer extends StatelessWidget {
  const MealsDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const EdgeInsets.only(top: 36.5),
      padding:const EdgeInsets.only(top:50, right: 8) ,
      decoration: BoxDecoration(
        color: AllColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mealsDetailsList[0].mealTitle, style: Styles.textStyleSemiBold14(context)),
          const SizedBox(height:5 ,),
          Text(mealsDetailsList[0].address, style: Styles.textStyleMedium14(context)),
          const SizedBox(height:5 ,),
          Text.rich(
            TextSpan(text:mealsDetailsList[0].category, style:
            Styles.textStyleMedium14(context).copyWith(color: AllColors.buttonMainColor),
                children: [
              TextSpan(
                text:"  🔥 ",style: TextStyle(color: Colors.deepOrange),
              ),
            TextSpan(text:mealsDetailsList[0].calories, style:
            Styles.textStyleMedium14(context),),
            ]
          ),
          ),
        ],
      ),
    );
  }
}










