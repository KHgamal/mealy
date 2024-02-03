import 'package:flutter/material.dart';
import 'package:mealy/features/profile/data/models/user_info.dart';
import 'package:mealy/generated/l10n.dart';

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

    List<IconData> icons = [];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          UserInfoRow(user: user),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
