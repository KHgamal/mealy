import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {super.key, required this.icon, required this.title, this.caloryValue});

  final Widget icon;
  final String title;
  final String? caloryValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: Row(
        children: [
          Text(caloryValue ?? ''),
          const Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
    );
  }
}
