import 'package:flutter/material.dart';
import 'package:mealy/features/gamefication/presentation/widgets/grid_view_item.dart';

import '../../../../generated/l10n.dart';

class ChallengesGridView extends StatelessWidget {
  const ChallengesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> meal = [
      S.of(context).createAccount,
      "100 ${S.of(context).meal}",
      "200 ${S.of(context).meal}",
      "300 ${S.of(context).meal}",
    ];
    List<String> point = [
      "2000 ${S.of(context).point}",
      "2000 ${S.of(context).point}",
      "3000 ${S.of(context).point}",
      "3000 ${S.of(context).point}",
    ];

    return GridView.builder(
      physics: const ScrollPhysics(
        parent: NeverScrollableScrollPhysics(),
      ),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return GridViewItem(
          meal: meal[(index + 4) % 4],
          point: point[(index + 4) % 4],
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 34,
        crossAxisSpacing: 21,
        childAspectRatio: 68.41 / 99.41,
      ),
    );
  }
}
