import 'package:flutter/material.dart';

import 'input_label.dart';
void showBottomSheet(context){
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
          color: Colors.white,
        ),
        height: 200,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    InputLabel(text: "",)
                  ],
                ))
              ],
            )
          ],
        ),
      );
    },
  );
}