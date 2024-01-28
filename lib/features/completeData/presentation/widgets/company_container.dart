import 'package:flutter/material.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'location_type_container.dart';
class CompanyContainer extends StatelessWidget {
  const CompanyContainer({super.key, required this.companySelected, this.onTap});
  final bool  companySelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LocationTypeContainer(text: S.of(context).company,
        image:Assets.imagesCompany,isSelected: companySelected,),
    );
  }

}
