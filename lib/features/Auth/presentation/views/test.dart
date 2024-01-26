import 'package:flutter/material.dart';

import '../widgets/auth_header.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AuthHeader(
          title: 'Change Password',
          subTitle: 'Start using our easy app and enjoy your meals',
        ),
      ),
    );
  }
}
