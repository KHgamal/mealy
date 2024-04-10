import 'package:flutter/material.dart';
import 'package:mealy/generated/assets.dart';
import '../../../features/profile/data/models/user_info.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.user,
  });

  final UserInfo user;

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(Assets.imagesNoUser)
      //  Provider.of<GuestProvider>(context).guest ?
      // const AssetImage(Assets.imagesNoUser) as ImageProvider
      //     :NetworkImage(user.image),
    );
  }
}
