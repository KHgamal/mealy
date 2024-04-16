import 'package:flutter/material.dart';
import 'package:mealy/generated/assets.dart';
import 'package:provider/provider.dart';
import '../../../features/home/presentation/controller/guest_version_provider/guest_version_provider.dart';
import '../../../features/profile/presentation/controller/user_info_provider/user_info_provider.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 25,
      backgroundColor: Colors.transparent,
      backgroundImage: Provider.of<GuestProvider>(context).guest ?
      const AssetImage(Assets.imagesNoUser)
          : Provider.of<UserInfoProvider>(context).image =="null" ?const AssetImage(Assets.imagesNoUser) as ImageProvider
      : NetworkImage(Provider.of<UserInfoProvider>(context).image!),
    );
  }
}
