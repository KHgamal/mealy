import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.txt, required this.onPressed});

  final String txt;
  final void Function() onPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: AllColors.disabledButton,
        ),
        width: MediaQuery.of(context).size.width * 0.42,
        height: 43,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              widget.txt,
              style: Styles.textStyle12.copyWith(color: AllColors.mainText),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child:
                  SvgPicture.asset('assets/images/arrow-swap-horizontal.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
