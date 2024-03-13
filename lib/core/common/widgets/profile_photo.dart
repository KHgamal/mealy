import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../features/profile/data/models/user_info.dart';
import '../../../features/profile/presentation/controller/user_info_provider/user_info_provider.dart';

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
      backgroundImage: CachedNetworkImageProvider(
        Provider.of<UserInfoProvider>(context).image ??
            "https://drive.google.com/file/d/1KGoI-RSPy2uoQVaVNGPPcRwy-GEiJXIO/view?usp=drive_link",
      ),
      //  Provider.of<GuestProvider>(context).guest ?
      // const AssetImage(Assets.imagesNoUser) as ImageProvider
      //     :NetworkImage(user.image),
    );
  }
}
