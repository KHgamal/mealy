import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/l10n.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  static List<Widget> pages = [];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_month),
              label: S.of(context).subscribes,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag),
              label: S.of(context).meals,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_pin_rounded),
              label: S.of(context).account,
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: AllColors.buttonMainColor,
          unselectedItemColor: AllColors.gray,
          selectedLabelStyle: Styles.textStyleMedium12(context)
              .copyWith(color: AllColors.buttonMainColor),
          unselectedLabelStyle:
              Styles.textStyleMedium12(context).copyWith(color: AllColors.gray),
          elevation: 10,
          backgroundColor: AllColors.white,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
