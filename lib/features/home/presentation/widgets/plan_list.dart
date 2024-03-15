import 'package:flutter/material.dart';
import 'package:mealy/features/home/presentation/widgets/plan_container.dart';

import '../../../../constant.dart';
import '../../../Subscriptions/presentation/views/my_subscriptions_view.dart';

class PlanList extends StatefulWidget {
  const PlanList({super.key});

  @override
  OptionsListState createState() => OptionsListState();
}

class OptionsListState extends State<PlanList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemCount:planDetailsList.length ,
        separatorBuilder: (BuildContext context, int i)=>
           const SizedBox(height: 12,)
        , itemBuilder: (BuildContext context, int i) =>
      PlanContainer(
        onTap: ()=> Navigator.pushNamed(context, MySubscriptionsView.id),
        title:planDetailsList[i].title,
        days:planDetailsList[i].days ,
        price:planDetailsList[i].price ,
        limitation:planDetailsList[i].limitation ,
      )
    ,);
  }
}