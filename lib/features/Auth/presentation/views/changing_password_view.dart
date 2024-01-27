import 'package:flutter/material.dart';

import '../widgets/changing_password_view_body.dart';

class ChangingPasswordView extends StatelessWidget {
  const ChangingPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ChangingPasswordViewBody(),
      ),
    );
  }
}
