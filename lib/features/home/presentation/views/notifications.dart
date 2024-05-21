import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  static String id="NotificationScreen";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CommonCustomAppBar(title: S.of(context).notifications),
              const SizedBox(height: 28,),
              const Expanded(
                child: NotificationsListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:notificationsInfoList(context).length,
      itemBuilder: (context,index)=>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: AllColors.disabledButton.withOpacity(0.5)
      ),
      child: NotificationsInfoChild(index: index,),
    ));
  }
}

class NotificationsInfoChild extends StatelessWidget {
  const NotificationsInfoChild({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Row(
        children: [
          SvgPicture.asset(notificationsInfoList(context)[index].icon),
          const SizedBox(width: 8,),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notificationsInfoList(context)[index].title,style:
               Styles.textStyleMedium16(context).copyWith(color: AllColors.black),),
               const SizedBox(height: 8,) ,
                Text(notificationsInfoList(context)[index].description,style:
               Styles.textStyleBook12(context).copyWith(color: AllColors.descr),)
            ],
          )
        ],
      )
      ,Text("${notificationsInfoList(context)[index].date} ${S.of(context).a_m}",
      style: Styles.textStyleBook12(context).copyWith(color: AllColors.gray),)
    ],);
  }
}