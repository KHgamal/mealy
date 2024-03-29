import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/splash/Presentation/views/splash_view.dart';
import 'package:mealy/firebase_options.dart';
import 'package:mealy/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'core/common/widgets/bottom_navigation_bar.dart';
import 'features/Auth/presentation/controller/phone_auth_cubit/phone_auth_cubit.dart';
import 'features/Auth/presentation/views/changing_password_view.dart';
import 'features/Auth/presentation/views/changing_password_view2.dart';
import 'features/Auth/presentation/views/create_account_view.dart';
import 'features/Auth/presentation/views/otp_view.dart';
import 'features/Meals/presentation/views/my_meals_view.dart';
import 'features/Subscriptions/presentation/controller/date controller/date_provider.dart';
import 'features/Subscriptions/presentation/views/choosing_meals_view.dart';
import 'features/Subscriptions/presentation/views/my_subscriptions_view.dart';
import 'features/completeData/presentation/views/complete_user_data_view.dart';
import 'features/completeData/presentation/views/location_details_view.dart';
import 'features/completeData/presentation/views/location_type_view.dart';
import 'features/gamefication/presentation/views/balance_view.dart';
import 'features/gamefication/presentation/views/rewards_view.dart';
import 'features/gamefication/presentation/views/the_challenges_view.dart';
import 'features/gamefication/presentation/views/the_levels_view.dart';
import 'features/gamefication/presentation/views/coupon_details_view.dart';
import 'features/home/presentation/controller/guest_version_provider/guest_version_provider.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/map/presentation/views/access_current_location_view.dart';
import 'features/onBoarding/presentation/controller/auth cubit/account_auth_cubit.dart';
import 'features/onBoarding/presentation/views/entrance_view.dart';
import 'features/onBoarding/presentation/views/on_boarding_view.dart';
import 'features/payment/presentation/views/delivery_and_payment_view.dart';
import 'features/profile/presentation/controller/app_language_provider/app_language_provider.dart';
import 'features/profile/presentation/controller/app_language_provider/radio_button_provider.dart';
import 'features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'features/profile/presentation/views/address_view.dart';
import 'features/profile/presentation/views/calorie_calculator_view.dart';
import 'features/profile/presentation/views/profile_view.dart';
import 'features/profile/presentation/views/terms_and_condition_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLanguage().fetchLocale();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppLanguage(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangeLanguageProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => GuestProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DateProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserInfoProvider(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AccountAuthCubit(),
          ),
          BlocProvider(
            create: (context) => AuthCubit(),
          ),
        ],
        child: Consumer<AppLanguage>(builder: (context, model, child) {
          return MaterialApp(
              //useInheritedMediaQuery : true,
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              locale: Provider.of<AppLanguage>(context).locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: ThemeData(
                scaffoldBackgroundColor: AllColors.buttonTextColor,
                useMaterial3: false,
                fontFamily: "Expo Arabic",
              ),
              routes: {
                OnBoardingView.id: (_) => const OnBoardingView(),
                EntranceView.id: (_) => const EntranceView(),
                LoginView.id: (_) => const LoginView(),
                OTPScreen.id: (_) => const OTPScreen(),
                CreateAccountView.id: (_) => const CreateAccountView(),
                ChangingPasswordView.id: (_) => const ChangingPasswordView(),
                ChangingPasswordView2.id: (_) => const ChangingPasswordView2(),
                LocationTypeView.id: (_) => const LocationTypeView(),
                LocationDetailsView.id: (_) => const LocationDetailsView(),
                CompleteUserDataView.id: (_) => const CompleteUserDataView(),
                MySubscriptionsView.id: (_) => const MySubscriptionsView(),
                HomeView.id: (_) => const HomeView(),
                MyMealsView.id: (_) => const MyMealsView(),
                CustomBottomNavigationBar.id: (_) =>
                    const CustomBottomNavigationBar(),
                ChoosingMealsView.id: (_) => const ChoosingMealsView(),
                DeliveryAndPaymentView.id: (_) =>
                    const DeliveryAndPaymentView(),
                TermsAndConditions.id: (_) => const TermsAndConditions(),
                AddressView.id: (_) =>
                    const AddressView(noAddressProvided: true),
                ProfileView.id: (_) => ProfileView(
                      user: kUser,
                    ),
                CalorieCalculatorView.id: (_) => const CalorieCalculatorView(),
                GetCurrentLocationView.id: (_) =>
                    const GetCurrentLocationView(),
                BalanceView.id: (_) => const BalanceView(),
                CouponDetailsView.id: (_) => const CouponDetailsView(),
                TheLevelsView.id: (_) => const TheLevelsView(),
                TheChallengesView.id: (_) => const TheChallengesView(),
                RewardsView.id: (_) => const RewardsView()
              },
              home: const SplashView());
        }),
      ),
    );
  }
}
