import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/features/Meals/presentation/views/my_meals_view.dart';
import 'package:mealy/features/Subscriptions/presentation/views/my_subscriptions_view.dart';
import 'package:mealy/features/home/presentation/views/home_view.dart';
import 'package:mealy/features/profile/presentation/views/profile_view.dart';
import 'package:mealy/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../constant.dart';
import '../../../features/Subscriptions/presentation/views/choosing_meals_view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  static String id = "CustomBottomNavigationBar";
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  static List<Widget> pages = [
    const HomeView(),
    const MySubscriptionsView(),
    const MyMealsView(),
    ProfileView(user: kUser)
  ];

  final _controller = PersistentTabController(initialIndex: 0);
  Color activeColorPrimary = AllColors.buttonMainColor;
  Color inActiveColorPrimary = AllColors.gray;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  // void onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: pages,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_filled),
          title: S.of(context).home,
          activeColorPrimary: activeColorPrimary,
          inactiveColorPrimary: inActiveColorPrimary,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month),
          title: S.of(context).subscribes,
          activeColorPrimary: activeColorPrimary,
          inactiveColorPrimary: inActiveColorPrimary,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: MySubscriptionsView.id,
            routes: {
              MySubscriptionsView.id: (_) => const MySubscriptionsView(),
              ChoosingMealsView.id: (_) => const ChoosingMealsView(),
            },
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_bag),
          title: S.of(context).meals,
          activeColorPrimary: activeColorPrimary,
          inactiveColorPrimary: inActiveColorPrimary,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_pin_rounded),
          title: S.of(context).account,
          activeColorPrimary: activeColorPrimary,
          inactiveColorPrimary: inActiveColorPrimary,
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: AllColors.white,
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(

          // borderRadius: BorderRadius.circular(10.0),
          ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
      hideNavigationBar: false,
    );
    // return SafeArea(
    //   child: Scaffold(
    //     body: pages[selectedIndex],
    //     bottomNavigationBar: BottomNavigationBar(
    //       items: [
    //         BottomNavigationBarItem(
    //           icon: const Icon(Icons.home_filled),
    //           label: S.of(context).home,
    //         ),
    //         BottomNavigationBarItem(
    //           icon: const Icon(Icons.calendar_month),
    //           label: S.of(context).subscribes,
    //         ),
    //         BottomNavigationBarItem(
    //           icon: const Icon(Icons.shopping_bag),
    //           label: S.of(context).meals,
    //         ),
    //         BottomNavigationBarItem(
    //           icon: const Icon(Icons.person_pin_rounded),
    //           label: S.of(context).account,
    //         ),
    //       ],
    //       currentIndex: selectedIndex,
    //       onTap: onItemTapped,
    //       selectedItemColor: AllColors.buttonMainColor,
    //       unselectedItemColor: AllColors.gray,
    //       selectedLabelStyle: Styles.textStyleMedium12(context)
    //           .copyWith(color: AllColors.buttonMainColor),
    //       unselectedLabelStyle:
    //           Styles.textStyleMedium12(context).copyWith(color: AllColors.gray),
    //       elevation: 10,
    //       backgroundColor: AllColors.white,
    //       showUnselectedLabels: true,
    //     ),
    //   ),
    // );
  }
}
