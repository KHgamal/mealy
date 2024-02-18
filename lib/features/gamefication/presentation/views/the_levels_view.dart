import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';

import '../../../../generated/l10n.dart';

class TheLevelsView extends StatelessWidget {
  const TheLevelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: Column(
            children: [
              CommonCustomAppBar(title: S.of(context).level),
            ],
          ),
        ),
      ),
    );
  }
}
