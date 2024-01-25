import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class AuthButton extends StatefulWidget {
  const AuthButton(
      {super.key,
      required this.txt,
      required this.onPressed,
      required this.image});

  final String txt;
  final void Function() onPressed;
  final String image;

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AllColors.authButton),
            borderRadius: BorderRadius.circular(9),
          ),
          color: AllColors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 54,
        // padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.txt,
              textAlign: TextAlign.right,
              style: Styles.textStyleMedium14(context),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: SvgPicture.asset(widget.image),
            ),
          ],
        ),
      ),
    );
  }
}
