import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';
import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';

class PackageDetailsContainer extends StatelessWidget {
  const PackageDetailsContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final CachedNetworkImage image = CachedNetworkImage(
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/c80b/2c10/615349ea1437a2a3df42079d50c19924?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=q-wDtVwebXbQ8G4Lir3x2BB4Lv~PDDVIpXdpHFsz4iTW~6WuYt9jWU9Ay6~mSKXvqTv9~zoQvFeZkuSr-Rl2-rm7fvqBinNi6XGICRA75eW24PPfO8UnP1FUnRfZl0K9g~C6chqqIoYR65REF44CQpE5KpGz1GjE-GiQrIvrvK2FJ0F5UyEWMrOJANp4Cw5bem-x1W-s8YFyyLG8279nYY1m~6fyfowKv0BfehlGQ9L1GAv7PeVWzGJ2uvpNwYfyyfFtk2tFQ7dHzI8ISDzbnbRVjdB-Pcb5AdIMF05e0pqUvbMFxdoRqvOAgA8eEBdaBlSHCSq437D-Vm6DVweVaw__",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      width: 24,
      height: 24,
    );
    final CachedNetworkImage image2 = CachedNetworkImage(
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/6d5b/5e8d/70578698115b544cbf5926db06990469?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dbCk~Snl3f7qE13BeJhHgw8zPcULN9u8HAEfOIc9DRbZ~E64qQdGKy1ZPKp44lCzGkg2UjFiAv8OfJ~gYtI3q~dON2QWPrizbYbDO1HPcb0oBwpn3ULcDDmyzLhWVsyu0dnrcpJVfoEUEFPG7r11A5w3y9Pf3-hV3g10LSn8dEq~AI9ra5CfdmEzcW-kQYqHryQYjaXdWiS4OU8pwtM3ePXg1qLOUv5OVm4IXJgp1HjiA1User8nZM40R13VNFoTUSfXloYJJQvHSlvyJXz5VtsG5jHWOnmdmNn7ywllYwQufRvg-plAEKRhB9o~Xg9fCi5JW9rLM1j46qBi1SnDRg__",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      width: 24,
      height: 24,
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: ShapeDecoration(
        color: AllColors.packageContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(packageDetailsList[0].planTitle,
                  style: Styles.textStyleSemiBold16(context)
                      .copyWith(color: AllColors.black)),
              const SizedBox(height: 10),
              Row(
                children: [
                  image,
                  const SizedBox(width: 5),
                  Text(packageDetailsList[0].planType,
                      style: Styles.textStyleMedium14(context)
                          .copyWith(color: AllColors.black)),
                  const SizedBox(width: 5),
                  image2,
                  const SizedBox(width: 5),
                  Text(packageDetailsList[0].category,
                      style: Styles.textStyleMedium14(context)
                          .copyWith(color: AllColors.buttonMainColor)),
                  const SizedBox(width: 5),
                  Text(packageDetailsList[0].planDays,
                      style: Styles.textStyleMedium14(context)
                          .copyWith(color: AllColors.black)),
                ],
              ),
              const SizedBox(height: 10),
              Text(packageDetailsList[0].planLimitation,
                  style: Styles.textStyleBook12(context)),
            ],
          ),
          const Expanded(child: SizedBox()),
          SvgPicture.asset(
            Assets.imagesMeals,
            width: width,
          )
        ],
      ),
    );
  }
}
