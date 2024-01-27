import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../generated/assets.dart';
import '../../../../onBoarding/presentation/views/on_boarding_view.dart';

class FadingLogo extends StatefulWidget {
  const FadingLogo({super.key});

  @override
  State<FadingLogo> createState() => _FadingLogoState();
}

class _FadingLogoState extends State<FadingLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> fadingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadingAnimation,
      builder: (context, _) {
        return FadeTransition(
          opacity: animationController,
          child: Center(child: SvgPicture.asset(Assets.imagesSplashIcon)),
        );
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    fadingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     // calculations
        //     transition: Transition.fade,
        //   duration: kTranstionDuration);

        Navigator.pushReplacementNamed(context, OnBoardingView.id);
      },
    );
  }
}
