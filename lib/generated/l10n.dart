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

  /// `start ordering`
  String get startOrdering {
    return Intl.message(
      'start ordering',
      name: 'startOrdering',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Login Using`
  String get loginType {
    return Intl.message(
      'Login Using',
      name: 'loginType',
      desc: '',
      args: [],
    );
  }

  /// `Login Using Facebook`
  String get faceLogin {
    return Intl.message(
      'Login Using Facebook',
      name: 'faceLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login Using Google`
  String get googleLogin {
    return Intl.message(
      'Login Using Google',
      name: 'googleLogin',
      desc: '',
      args: [],
    );
  }

  /// `Enter as a Visitor`
  String get visitorLogin {
    return Intl.message(
      'Enter as a Visitor',
      name: 'visitorLogin',
      desc: '',
      args: [],
    );
  }

  /// `code not received ?`
  String get code_not_received {
    return Intl.message(
      'code not received ?',
      name: 'code_not_received',
      desc: '',
      args: [],
    );
  }

  /// `(Resend after 20 sec)`
  String get resend_code {
    return Intl.message(
      '(Resend after 20 sec)',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continue_text {
    return Intl.message(
      'continue',
      name: 'continue_text',
      desc: '',
      args: [],
    );
  }

  /// `Login now`
  String get authHeader1 {
    return Intl.message(
      'Login now',
      name: 'authHeader1',
      desc: '',
      args: [],
    );
  }

  /// `Create account now`
  String get authHeader2 {
    return Intl.message(
      'Create account now',
      name: 'authHeader2',
      desc: '',
      args: [],
    );
  }

  /// `Receive the sent code`
  String get authHeader3 {
    return Intl.message(
      'Receive the sent code',
      name: 'authHeader3',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get authHeader4 {
    return Intl.message(
      'Change password',
      name: 'authHeader4',
      desc: '',
      args: [],
    );
  }

  /// `Start using our easy app and enjoy your meals`
  String get authSubTitle {
    return Intl.message(
      'Start using our easy app and enjoy your meals',
      name: 'authSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `forget password ?`
  String get forget_password {
    return Intl.message(
      'forget password ?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `confirm password`
  String get confirmPassword {
    return Intl.message(
      'confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `create account `
  String get createAccount {
    return Intl.message(
      'create account ',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continuation {
    return Intl.message(
      'continue',
      name: 'continuation',
      desc: '',
      args: [],
    );
  }

  /// `already have an account ?`
  String get already_have_an_account {
    return Intl.message(
      'already have an account ?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }
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
