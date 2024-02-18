import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/core/common/widgets/pink_button.dart';

import '../../../../generated/l10n.dart';
import '../widgets/stepper.dart';

class TheLevelsView extends StatelessWidget {
  const TheLevelsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> txt = [
      S.of(context).you_are_here,
      "${S.of(context).point} 200",
      "${S.of(context).point} 1000",
      "${S.of(context).point} 3000",
      "${S.of(context).point} 4000",
      "${S.of(context).point} 5000",
    ];

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CommonCustomAppBar(title: S.of(context).the_levels),
                const SizedBox(
                  height: 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.44,
                      child: const CustomStepper(),
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     PinkButton(txt: S.of(context).you_are_here, onPressed: (){}, radius: 9),
                    //   ],
                    // ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.19793333333,
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).height * 0.07),
                        shrinkWrap: true,
                        itemCount: txt.length,
                        itemBuilder: (context, index) {
                          return PinkButton(
                            txt: txt[index],
                            onPressed: () {},
                            radius: 9,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: (MediaQuery.sizeOf(context).height *
                                    0.12397) -
                                (getResponsiveFontSize(context, fontSize: 12) *
                                    0.5),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
