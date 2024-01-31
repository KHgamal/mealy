import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/toggle_button.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24,),
              AspectRatio(
          aspectRatio: 343/145,
            child: Image.asset(Assets.imagesContainer, width: double.infinity,fit: BoxFit.cover,)),
              const SizedBox(height: 24,),
              Text(
                'اختار الخطة المناسبة ليك',
                style:Styles.textStyleMedium18(context)
              ),
              const SizedBox(height: 24,),
              ToggleButton(
                txt1: "غداء",
                txt2: "يوم كامل",
              ),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
