import 'package:flutter/material.dart';
import 'package:mealy/features/Auth/presentation/widgets/changing_password_view2_body.dart';

class ChangingPasswordView2 extends StatelessWidget {
  const ChangingPasswordView2({super.key});
  static String id = "ChangingPasswordView2";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ChangingPasswordView2Body(),
      ),
    );
  }
}
