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
"https://s3-alpha-sig.figma.com/img/c80b/2c10/615349ea1437a2a3df42079d50c19924?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OZwNbs-RhOBIvpAgNtyFKp~k9gqXCtPAVj-M58Qss5eWk8HLi6sALaN82IBTq2hwfmJGYns4vvFEfn8V3BC-H0EvVdBhR1pUt6avPg7x3fQSOPLo30MogvVo~f0f5spKB3YBznaLXhzA7qMzCRl1VW62zoS7LTYpQyTkJLmj8PtEtwP93Rr9uSQe~Fa50kvzDlBcgdMWQdMofbUrzp3kRQ969cnOhtcibbRQq7ia5aupBrxh2LKtbl6AGdrzF2nrPLkv8sXH7RBMUMu0Ysq5y7OVB4C5cp4E6W6ThAXf1ha08txWmjxYTRAYdjwS1EqgGIuFs51A5XDtnBIVaPpV~A__",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.lunch_dining , color: Colors.orange,),
      width: 24,
      height: 24,
    );
    final CachedNetworkImage image2 = CachedNetworkImage(
      imageUrl:
"https://s3-alpha-sig.figma.com/img/6d5b/5e8d/70578698115b544cbf5926db06990469?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qeCDo3no~DUIui-G5o7wOB~u006QFSofOGL0SZWcBOcltyxg3nhtLJm~4OZU88aB1NRNOWrJRQnbLoKqKL1~HSf0mrEQA8itUcNOF8sSmmOBUxEc53HERQlpvAW8NUOmAu0ut9Pj0DuPyJsETqll2uluIUBBcLRIwXiguTwRVgKMxZ9nTax~v4BGoFGQnRXj7ArVUbA2hgf5XvjM~tbsR0JvR-XzrJVfyRT08Iwuys5Mu1XY4GY5cQksq9Mv8zUcJxdqwOL5H3KFRczNzs6urBzFTAj21XxSL0F5Ud5QhH9dR6ZkLeAIbPfry4i-ec3Jn4urUQN2ECvJtcy7IiejOg__",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.dinner_dining_rounded , color: Colors.amber,),
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
