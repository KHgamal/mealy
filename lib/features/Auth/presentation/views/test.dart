import 'package:flutter/material.dart';
import 'package:mealy/features/completeData/presentation/widgets/access_location_dialog.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AccessLocationDialog();
                });
          },
          child: const Text('show alert dialog'),
        ),
      )),
    );
  }
}
