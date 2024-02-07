import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/profile/data/models/user_info.dart';
import 'package:mealy/features/profile/presentation/views/terms_and_condition_view.dart';
import 'package:mealy/features/profile/presentation/widgets/profile_container.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../generated/assets.dart';
import '../widgets/user_info_row.dart';
import 'address_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.user});
  static String id="ProfileView";
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

    List<String> pages = [
      AddressView.id, //1
      AddressView.id, //2 temporary
      AddressView.id, //3 temporary
      AddressView.id, //4 temporary
      AddressView.id, //5 temporary
      AddressView.id, //6 temporary
      TermsAndConditions.id, //7
      AddressView.id, //8 temporary
      AddressView.id, //9 temporary
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
                  onTap:()=>Navigator.pushNamed(context, pages[index]),
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
