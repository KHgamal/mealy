import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';
import '../../../completeData/presentation/widgets/access_location_dialog.dart';
import '../widgets/search_bar.dart';

class GetCurrentLocationView extends StatefulWidget {
  static String id = "GetCurrentLocationView";
  const GetCurrentLocationView({super.key});

  @override
  State<GetCurrentLocationView> createState() => _GetCurrentLocationViewState();
}

class _GetCurrentLocationViewState extends State<GetCurrentLocationView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return const PopScope(canPop: false, child: AccessLocationDialog());
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesMap,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 100, child: SearchField()),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
                child: CommonButton(
                  txt: S.of(context).Confirm_address,
                  onPressed: () {},
                  radius: 8,
                  high: 54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
