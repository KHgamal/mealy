
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/on_boarding_model.dart';
import '../widgets/dots_indicator.dart';
import '../widgets/image_page_view.dart';
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  static String id="OnBoardingView";

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  List<OnBoarding> itemsList(context){
    List<OnBoarding> items = [
      OnBoarding(
          image:Assets.imagesOnBoarding1,
          title:S.of(context).onBoardingTitle1,
          subTitle: S.of(context).onBoardingSubTitle1),
      OnBoarding(
          image:Assets.imagesOnBoarding2,
          title:S.of(context).onBoardingTitle2,
          subTitle: S.of(context).onBoardingSubTitle2),
      OnBoarding(
          image:Assets.imagesOnBoarding3,
          title:S.of(context).onBoardingTitle3,
          subTitle: S.of(context).onBoardingSubTitle3),
    ];
    return items;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
          children: [
            Expanded(
                //flex: 2,
                child: ImagesPageView(items: itemsList(context),
                  pageController: pageController,)),
           const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16),
              child: Column(
                children: [
                  Row(
                   mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                       itemsList(context)[currentPageIndex].title,
                        style: Styles.textStyleBold18(context)
                      ),
                      SvgPicture.asset (Assets.imagesFoodHeaderIcon ,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    itemsList(context)[currentPageIndex].subTitle,
                    style: Styles.textStyleBook16(context).copyWith(color: AllColors.descr)
                  ),
                  const SizedBox(
                    height:10,
                  ),
                  DotsIndicator(currentPageIndex: currentPageIndex),
                  const SizedBox(
                    height: 10,
                  ),
                  CommonButton(
                    onPressed: (){
                      setState(() {
                        if(currentPageIndex<2) {
                          currentPageIndex++;
                        }
                      });},
                    radius: 9,
                    txt:S.of(context).next,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: (){}, child: Text(
                    S.of(context).skip,
                    style:Styles.textStyleBook16(context).copyWith(color: AllColors.descr)
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )


          ],
      ),
    );
  }
}
