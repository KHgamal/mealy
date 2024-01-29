import 'package:flutter/material.dart';

import '../widgets/complete_user_data_view_body.dart';

class CompleteUserDataView extends StatelessWidget {
  const CompleteUserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CompleteUserDataViewBody(),
      ),
    );
  }
}
