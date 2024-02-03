import 'package:flutter/material.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
import '../widgets/address_container.dart';

class DeliveryAndPaymentView extends StatelessWidget {
  const DeliveryAndPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonCustomAppBar(title: S.of(context).deliveryAndPayment),
              const SizedBox(
                height: 24,
              ),
              const AddressContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
