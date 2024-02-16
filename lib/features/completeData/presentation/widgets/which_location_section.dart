import 'package:flutter/material.dart';

import 'company_container.dart';
import 'home_container.dart';
class TypeSection extends StatefulWidget {
  const TypeSection({super.key});

  @override
  TypeSectionState createState() => TypeSectionState();
}

class TypeSectionState extends State<TypeSection> {
  bool homeSelected=true;
  bool companySelected=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeContainer(
            homeSelected: homeSelected,
            onTap:()=> setState(() {
              homeSelected = true;
              companySelected = false;
            }),
          ),
        ),
        const SizedBox(width: 16,),
        Expanded(child:CompanyContainer(
          companySelected: companySelected,
          onTap: ()=>setState(() {
            companySelected=true;
            homeSelected=false;
          }),
        ))
      ],
    );
  }
}
