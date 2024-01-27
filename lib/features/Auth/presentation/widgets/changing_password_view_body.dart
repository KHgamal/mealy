import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/Auth/presentation/widgets/auth_header.dart';

import '../../../../generated/l10n.dart';

class ChangingPasswordViewBody extends StatelessWidget {
  const ChangingPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AuthHeader(
              title: S.of(context).authHeader4,
              subTitle: S.of(context).authSubTitle),
        ),
        const SizedBox(
          height: 38,
        ),
        CustomTextField(hintText: S.of(context).password),
      ],
    );
  }
}
