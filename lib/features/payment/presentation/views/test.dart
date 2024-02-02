import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';

import '../widgets/bottom_sheet.dart';
class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonButton(txt: 'show',onPressed:()=> shoBottomSheet(context), radius: 8,),
      ),
    );
  }
}
