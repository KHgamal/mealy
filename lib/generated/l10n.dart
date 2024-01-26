// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to Mealy application for daily meals `
  String get onBoardingTitle1 {
    return Intl.message(
      'Welcome to Mealy application for daily meals ',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Mealy application for daily meals`
  String get onBoardingTitle2 {
    return Intl.message(
      'Welcome to Mealy application for daily meals',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Mealy application for daily meals`
  String get onBoardingTitle3 {
    return Intl.message(
      'Welcome to Mealy application for daily meals',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Start using our easy application and enjoy your meals delivered to your doorstep or company.`
  String get onBoardingSubTitle1 {
    return Intl.message(
      'Start using our easy application and enjoy your meals delivered to your doorstep or company.',
      name: 'onBoardingSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Start using our easy application and enjoy your meals delivered to your doorstep or company.`
  String get onBoardingSubTitle2 {
    return Intl.message(
      'Start using our easy application and enjoy your meals delivered to your doorstep or company.',
      name: 'onBoardingSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start using our easy application and enjoy your meals delivered to your doorstep or company.`
  String get onBoardingSubTitle3 {
    return Intl.message(
      'Start using our easy application and enjoy your meals delivered to your doorstep or company.',
      name: 'onBoardingSubTitle3',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'start ordering' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
