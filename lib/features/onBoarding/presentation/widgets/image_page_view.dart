import 'package:flutter/material.dart';

import '../../data/models/on_boarding_model.dart';

class ImagesPageView extends StatelessWidget {
  const ImagesPageView(
      {super.key, required this.items, required this.pageController});
  final List<OnBoarding> items;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Image.asset(
              items[index].image,
              fit: BoxFit.cover,
            ));
  }
}
