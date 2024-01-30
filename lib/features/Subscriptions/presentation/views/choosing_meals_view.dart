import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/date_widget.dart';

class ChoosingMealsView extends StatelessWidget {
  const ChoosingMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomAppBar(),
        SizedBox(
          height: 46.5,
        ),
        DateWidget(),
        Divider(
          height: 42,
        )
      ],
    );
  }
}
