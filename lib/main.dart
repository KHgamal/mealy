import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mealy/features/splash/Presentation/views/splash_view.dart';
import 'package:mealy/generated/l10n.dart';

import 'features/onBoarding/presentation/views/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        useMaterial3: true,
        fontFamily: "Expo Arabic",
      ),
      routes: {
        OnBoardingView.id: (_) => const OnBoardingView(),
      },
      home: const SplashView(),);
  }
}
