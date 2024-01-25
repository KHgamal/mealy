import 'package:flutter/material.dart';

import '../widgets/entrance_view_body.dart';

class EntranceView extends StatelessWidget {
  const EntranceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EntranceViewBody(),
      ),
    );
  }
}
