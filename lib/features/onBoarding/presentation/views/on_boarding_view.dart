import 'package:flutter/material.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/on_boarding_model.dart';
import '../widgets/control_current_page_section.dart';
import '../widgets/image_page_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static String id = "OnBoardingView";

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

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  List<OnBoarding> itemsList(context) {
    List<OnBoarding> items = [
      OnBoarding(
          image: Assets.imagesOnBoarding1,
          title: S.of(context).onBoardingTitle1,
          subTitle: S.of(context).onBoardingSubTitle1),
      OnBoarding(
          image: Assets.imagesOnBoarding2,
          title: S.of(context).onBoardingTitle2,
          subTitle: S.of(context).onBoardingSubTitle2),
      OnBoarding(
          image: Assets.imagesOnBoarding3,
          title: S.of(context).onBoardingTitle3,
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
            child: ImagesPageView(
              items: itemsList(context),
              pageController: pageController,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ControlCurrentPageSection(
            title: itemsList(context)[currentPageIndex].title,
            subTitle: itemsList(context)[currentPageIndex].subTitle,
            currentPageIndex: currentPageIndex,
            nextPage: nextPage,
          )
        ],
      ),
    );
  }

  void nextPage() {
    setState(() {
      if (currentPageIndex < 2) {
        currentPageIndex++;
        pageController.jumpToPage(pageController.page!.round() + 1);
      }
      //else {
      //   Navigator.pushReplacementNamed(context, EntranceView.id);
      // }
    });
  }
}
