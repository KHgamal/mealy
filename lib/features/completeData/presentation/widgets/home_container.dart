import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'location_type_container.dart';
class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.homeSelected,required this.onTap});
  final bool  homeSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap:onTap,
      child:LocationTypeContainer(text: S.of(context).home_location,
        image: Assets.imagesHome,isSelected:homeSelected,),
    );
  }
}
