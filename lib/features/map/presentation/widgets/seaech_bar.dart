import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../generated/l10n.dart';
class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      shadowColor: Colors.black.withOpacity(0.25),
      //controller: controller,
      elevation:6,
      hintStyle:Styles.textStyleBook16(context).copyWith(color: AllColors.searchBar),
     // queryStyle: TextStyle(fontSize: 18),
      hint:S.of(context).Find_your_address,
      borderRadius: BorderRadius.circular(12),
      margins: const EdgeInsets.fromLTRB(16, 41, 16, 0),
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: 52,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 600),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      progress: false,
      onQueryChanged: (query) {

      },
      transition: CircularFloatingSearchBarTransition(),
      actions: const [],
      leadingActions: [
        FloatingSearchBarAction(
            showIfOpened: true,
            child: SvgPicture.asset(Assets.imagesSearchNormal ,height: 24,width: 24,)),
        const SizedBox(width: 10,)
      ],
      builder: (context, transition) {
        return Container(
         decoration: const BoxDecoration(
           borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),
           bottomLeft:  Radius.circular(8) )
         ),
         //  child: ListView.separated(
         //      itemBuilder: (_, index) => Row(),
         //      separatorBuilder: (_, index) => const Divider(),
         //      itemCount: itemCount
         //  ),
        );
      },
    );
  }
}
