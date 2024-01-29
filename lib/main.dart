import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/splash/Presentation/views/splash_view.dart';
import 'package:mealy/generated/l10n.dart';

import 'features/Auth/presentation/views/changing_password_view.dart';
import 'features/Auth/presentation/views/changing_password_view2.dart';
import 'features/Auth/presentation/views/create_account_view.dart';
import 'features/Auth/presentation/views/otp_view.dart';
import 'features/completeData/presentation/views/complete_user_data_view.dart';
import 'features/completeData/presentation/views/location_details_view.dart';
import 'features/completeData/presentation/views/location_type_view.dart';
import 'features/onBoarding/presentation/views/entrance_view.dart';
import 'features/onBoarding/presentation/views/on_boarding_view.dart';

void main() {
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
    return MaterialApp(
      //useInheritedMediaQuery : true,
      builder: DevicePreview.appBuilder,
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
        CreateAccountView.id: (_) => const CreateAccountView(),
        ChangingPasswordView.id: (_) => const ChangingPasswordView(),
        ChangingPasswordView2.id: (_) => const ChangingPasswordView2(),
        LocationTypeView.id : (_) => const LocationTypeView(),
        LocationDetailsView.id: (_) => const LocationDetailsView(),
        CompleteUserDataView.id : (_) => const CompleteUserDataView(),
      },
      home: const SplashView(),
    );
  }
}
