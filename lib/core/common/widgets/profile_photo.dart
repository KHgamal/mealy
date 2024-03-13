import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../features/home/presentation/controller/guest_version_provider/guest_version_provider.dart';
import '../../../features/profile/data/models/user_info.dart';
import '../../../generated/assets.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
  super.key,
  required this.user,
  });

  final UserInfo user;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.transparent,
      backgroundImage: Provider.of<GuestProvider>(context).guest ?
      const AssetImage(Assets.imagesNoUser) as ImageProvider
          :NetworkImage(user.image),
    );
  }
}