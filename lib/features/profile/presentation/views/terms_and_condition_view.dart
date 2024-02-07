import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});
  static String id = "TermsAndConditions";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonCustomAppBar(
                  title: S.of(context).termsAndConditions,
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: AutoSizeText(
                    termsAndCond,
                    style: Styles.textStyleBook16(context)
                        .copyWith(color: AllColors.darkGray),
                    minFontSize: 16,
                    maxLines: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
