import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {super.key, required this.icon, required this.title, this.caloryValue, required this.onTap});

  final Widget icon;
  final String title;
  final String? caloryValue;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: AllColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.mainText),
              ),
              const Spacer(),
              Text(
                caloryValue ?? '',
                style: Styles.textStyleSemiBold16(context)
                    .copyWith(color: AllColors.buttonMainColor),
              ),
              const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      ),
    );
    // return ListTile(
    //   leading: icon,
    //   title: Text(
    //     title,
    //     style: Styles.textStyleMedium16(context)
    //         .copyWith(color: AllColors.mainText),
    //   ),
    //   trailing: Row(
    //     children: [
    //       Text(
    //         caloryValue ?? '',
    //         style: Styles.textStyleSemiBold16(context)
    //             .copyWith(color: AllColors.buttonMainColor),
    //       ),
    //       const Icon(Icons.arrow_forward_ios_outlined),
    //     ],
    //   ),
    // );
  }
}
