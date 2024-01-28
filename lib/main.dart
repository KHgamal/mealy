import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/generated/l10n.dart';

import 'features/Auth/presentation/views/create_account_view.dart';
import 'features/Auth/presentation/views/otp_view.dart';
import 'features/Auth/presentation/views/test.dart';
import 'features/onBoarding/presentation/views/entrance_view.dart';
import 'features/onBoarding/presentation/views/on_boarding_view.dart';
import 'features/splash/Presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.buttonTextColor,
        useMaterial3: true,
        fontFamily: "Expo Arabic",
      ),
      routes: {
        OnBoardingView.id: (_) => const OnBoardingView(),
        EntranceView.id: (_) => const EntranceView(),
        LoginView.id: (_) => const LoginView(),
        OTPScreen.id: (_) => const OTPScreen(),
        CreateAccountView.id: (_) => const  CreateAccountView()
      },
      home: const SplashView(),
    );
  }
}
