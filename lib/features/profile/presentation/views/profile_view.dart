import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/profile/data/models/user_info.dart';
import 'package:mealy/features/profile/presentation/widgets/profile_container.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../generated/assets.dart';
import '../widgets/user_info_row.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.user});

  final UserInfo user;

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      S.of(context).theAddresses,
      S.of(context).balance,
      S.of(context).calculateCalories,
      S.of(context).rewards,
      S.of(context).changeTheLanguage,
      S.of(context).help,
      S.of(context).termsAndConditions,
      S.of(context).shareTheApp,
      S.of(context).signOut,
    ];

    List<String> icons = [
      Assets.imagesAddressIcon,
      Assets.imagesBalanceIcon,
      Assets.imagesAddressIcon,
      Assets.imagesRewardsIcon,
      Assets.imagesLangageIcon,
      Assets.imagesHelpIcon,
      Assets.imagesTermsIcon,
      Assets.imagesShareIcon,
      Assets.imagesSignOutIcon
    ];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          UserInfoRow(user: user),
          const SizedBox(
            height: 24,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: title.length,
            itemBuilder: (context, index) {
              if (index == 2) {
                return ProfileContainer(
                  onTap: (){},
                  icon: SvgPicture.asset(
                    icons[index],
                  ),
                  title: title[index],
                  caloryValue: '1106',
                );
              } else {
                return ProfileContainer(
                  onTap: (){},
                  icon: SvgPicture.asset(
                    icons[index],
                  ),
                  title: title[index],
                );
              }
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
          )
        ],
      ),
    );
  }
}
