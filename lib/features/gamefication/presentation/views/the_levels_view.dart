import 'package:flutter/material.dart';

class TheLevelsView extends StatelessWidget {
  const TheLevelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 20),
        ),
      ),
    );
  }
}
