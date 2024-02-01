import 'package:flutter/material.dart';
import 'package:mealy/features/home/presentation/widgets/plan_container.dart';

import '../../../../constant.dart';

class PlanList extends StatefulWidget {
  const PlanList({super.key});

  @override
  OptionsListState createState() => OptionsListState();
}

class OptionsListState extends State<PlanList> {
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemCount:planDetailsList.length ,
        separatorBuilder: (BuildContext context, int i)=>
           const SizedBox(height: 12,)
        , itemBuilder: (BuildContext context, int i) =>
      PlanContainer(
        title:planDetailsList[i].title,
        days:planDetailsList[i].days ,
        price:planDetailsList[i].price ,
        limitation:planDetailsList[i].limitation ,
      )
    ,);
  }
}