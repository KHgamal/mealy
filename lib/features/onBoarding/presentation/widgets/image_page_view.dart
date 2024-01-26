import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/on_boarding_model.dart';
class ImagesPageView extends StatelessWidget {
  const ImagesPageView({Key? key, required this.items, required this.pageController}) : super(key: key);
 final List<OnBoarding> items;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context,index)=> Image.asset(items[index].image ,
          fit:BoxFit.cover ,)
    );
  }
}
