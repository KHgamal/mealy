import 'package:flutter/material.dart';

import 'auth_option.dart';

class EntranceViewBody extends StatelessWidget {
  const EntranceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/onBoarding4.png',
              fit: BoxFit.cover,
            ),
          ),
          const Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AuthenticationType(),
            ),
          )
        ],
      ),
    );
  }
}
