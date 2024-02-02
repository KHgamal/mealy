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

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Subscribes`
  String get subscribes {
    return Intl.message(
      'Subscribes',
      name: 'subscribes',
      desc: '',
      args: [],
    );
  }

  /// `Meals`
  String get meals {
    return Intl.message(
      'Meals',
      name: 'meals',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `The data has been completed Successfully`
  String get dataCompleted {
    return Intl.message(
      'The data has been completed Successfully',
      name: 'dataCompleted',
      desc: '',
      args: [],
    );
  }

  /// `let''s start`
  String get letsStart {
    return Intl.message(
      'let\'\'s start',
      name: 'letsStart',
      desc: '',
      args: [],
    );
  }

  /// `Complete Data`
  String get complete_Data {
    return Intl.message(
      'Complete Data',
      name: 'complete_Data',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_location {
    return Intl.message(
      'Home',
      name: 'home_location',
      desc: '',
      args: [],
    );
  }

  /// `Find my current location`
  String get Find_my_current_location {
    return Intl.message(
      'Find my current location',
      name: 'Find_my_current_location',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get building {
    return Intl.message(
      'Building',
      name: 'building',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `details`
  String get details {
    return Intl.message(
      'details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Any details ?`
  String get any_details {
    return Intl.message(
      'Any details ?',
      name: 'any_details',
      desc: '',
      args: [],
    );
  }

  /// `Allow “Mealy” to access your location`
  String get allowLocationAccess {
    return Intl.message(
      'Allow “Mealy” to access your location',
      name: 'allowLocationAccess',
      desc: '',
      args: [],
    );
  }

  /// `In order to be able to track your order, please allow us access to your location`
  String get toTrackYourOrder {
    return Intl.message(
      'In order to be able to track your order, please allow us access to your location',
      name: 'toTrackYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow {
    return Intl.message(
      'Allow',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get userName {
    return Intl.message(
      'user name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `There are no subscriptions yet`
  String get no_subscriptions_yet {
    return Intl.message(
      'There are no subscriptions yet',
      name: 'no_subscriptions_yet',
      desc: '',
      args: [],
    );
  }

  /// `When you subscribe to one of Mealy’s packages, the active subscriptions will appear here so that you can fully manage them at any time.`
  String get no_subscriptions_yet_description {
    return Intl.message(
      'When you subscribe to one of Mealy’s packages, the active subscriptions will appear here so that you can fully manage them at any time.',
      name: 'no_subscriptions_yet_description',
      desc: '',
      args: [],
    );
  }

  /// `Determine your vacation days `
  String get Determine_your_vacation_days {
    return Intl.message(
      'Determine your vacation days ',
      name: 'Determine_your_vacation_days',
      desc: '',
      args: [],
    );
  }

  /// `Change your pre-selected meals`
  String get Change_your_pre_selected_meals {
    return Intl.message(
      'Change your pre-selected meals',
      name: 'Change_your_pre_selected_meals',
      desc: '',
      args: [],
    );
  }

  /// `Postpone meals for another day`
  String get Postpone_meals_for_another_day {
    return Intl.message(
      'Postpone meals for another day',
      name: 'Postpone_meals_for_another_day',
      desc: '',
      args: [],
    );
  }

  /// `Change location and time of delivery`
  String get Change_location_and_time_of_delivery {
    return Intl.message(
      'Change location and time of delivery',
      name: 'Change_location_and_time_of_delivery',
      desc: '',
      args: [],
    );
  }

  /// `My subscriptions`
  String get My_subscriptions {
    return Intl.message(
      'My subscriptions',
      name: 'My_subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Please note that subscription modifications are subject to the terms and conditions`
  String get note {
    return Intl.message(
      'Please note that subscription modifications are subject to the terms and conditions',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `subscribe now`
  String get subscribe_now {
    return Intl.message(
      'subscribe now',
      name: 'subscribe_now',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Meals`
  String get chooseYourMeals {
    return Intl.message(
      'Choose Your Meals',
      name: 'chooseYourMeals',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Subscription starts from`
  String get SubscriptionStartsFrom {
    return Intl.message(
      'Subscription starts from',
      name: 'SubscriptionStartsFrom',
      desc: '',
      args: [],
    );
  }

  /// `change date`
  String get changeDate {
    return Intl.message(
      'change date',
      name: 'changeDate',
      desc: '',
      args: [],
    );
  }

  /// `Subscription days`
  String get subscriptionDays {
    return Intl.message(
      'Subscription days',
      name: 'subscriptionDays',
      desc: '',
      args: [],
    );
  }

  /// `Designate a day off and not choose a meal.`
  String get dayOff {
    return Intl.message(
      'Designate a day off and not choose a meal.',
      name: 'dayOff',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Choose the meal`
  String get chooceTheMeal {
    return Intl.message(
      'Choose the meal',
      name: 'chooceTheMeal',
      desc: '',
      args: [],
    );
  }

  /// `Chosen`
  String get chosen {
    return Intl.message(
      'Chosen',
      name: 'chosen',
      desc: '',
      args: [],
    );
  }

  /// `Choose the plan that suits you`
  String get Choose_the_plan {
    return Intl.message(
      'Choose the plan that suits you',
      name: 'Choose_the_plan',
      desc: '',
      args: [],
    );
  }

  /// ` lunch`
  String get lunch {
    return Intl.message(
      ' lunch',
      name: 'lunch',
      desc: '',
      args: [],
    );
  }

  /// `Full Day`
  String get Full_Day {
    return Intl.message(
      'Full Day',
      name: 'Full_Day',
      desc: '',
      args: [],
    );
  }

  /// `My meals`
  String get my_meals {
    return Intl.message(
      'My meals',
      name: 'my_meals',
      desc: '',
      args: [],
    );
  }

  /// `Package details`
  String get package_details {
    return Intl.message(
      'Package details',
      name: 'package_details',
      desc: '',
      args: [],
    );
  }

  /// `Change all meals`
  String get change_all_meals {
    return Intl.message(
      'Change all meals',
      name: 'change_all_meals',
      desc: '',
      args: [],
    );
  }

  /// `change meal`
  String get change_meal {
    return Intl.message(
      'change meal',
      name: 'change_meal',
      desc: '',
      args: [],
    );
  }

  /// `Set a day off`
  String get day_off {
    return Intl.message(
      'Set a day off',
      name: 'day_off',
      desc: '',
      args: [],
    );
  }

  /// `Fats`
  String get fats {
    return Intl.message(
      'Fats',
      name: 'fats',
      desc: '',
      args: [],
    );
  }

  /// `Carbohydrate`
  String get carbo {
    return Intl.message(
      'Carbohydrate',
      name: 'carbo',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get calory {
    return Intl.message(
      'Calories',
      name: 'calory',
      desc: '',
      args: [],
    );
  }

  /// `Protein`
  String get protein {
    return Intl.message(
      'Protein',
      name: 'protein',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get Floor {
    return Intl.message(
      'Floor',
      name: 'Floor',
      desc: '',
      args: [],
    );
  }

  /// `Office number`
  String get Office_number {
    return Intl.message(
      'Office number',
      name: 'Office_number',
      desc: '',
      args: [],
    );
  }

  /// `Delivery notes (optional)`
  String get Delivery_notes {
    return Intl.message(
      'Delivery notes (optional)',
      name: 'Delivery_notes',
      desc: '',
      args: [],
    );
  }

  /// `Favorite contact`
  String get Favorite_contact {
    return Intl.message(
      'Favorite contact',
      name: 'Favorite_contact',
      desc: '',
      args: [],
    );
  }

  /// `contact number`
  String get contact_number {
    return Intl.message(
      'contact number',
      name: 'contact_number',
      desc: '',
      args: [],
    );
  }

  /// `receiving Preferences`
  String get receiving_Preferences {
    return Intl.message(
      'receiving Preferences',
      name: 'receiving_Preferences',
      desc: '',
      args: [],
    );
  }

  /// `Delivery and Payment`
  String get deliveryAndPayment {
    return Intl.message(
      'Delivery and Payment',
      name: 'deliveryAndPayment',
      desc: '',
      args: [],
    );
  }

  /// `The Address`
  String get theAddress {
    return Intl.message(
      'The Address',
      name: 'theAddress',
      desc: '',
      args: [],
    );
  }

  /// `Choose from your addresses`
  String get chooseFromYourAddresses {
    return Intl.message(
      'Choose from your addresses',
      name: 'chooseFromYourAddresses',
      desc: '',
      args: [],
    );
  }

  /// `New Address`
  String get newAddress {
    return Intl.message(
      'New Address',
      name: 'newAddress',
      desc: '',
      args: [],
    );
  }

  /// `Time of receipt`
  String get timeOfReceipt {
    return Intl.message(
      'Time of receipt',
      name: 'timeOfReceipt',
      desc: '',
      args: [],
    );
  }

  /// `The payment`
  String get thePayment {
    return Intl.message(
      'The payment',
      name: 'thePayment',
      desc: '',
      args: [],
    );
  }

  /// `Paying with “the card name”`
  String get payingWithCardName {
    return Intl.message(
      'Paying with “the card name”',
      name: 'payingWithCardName',
      desc: '',
      args: [],
    );
  }

  /// `Discount coupon`
  String get discountCoupon {
    return Intl.message(
      'Discount coupon',
      name: 'discountCoupon',
      desc: '',
      args: [],
    );
  }

  /// `coupon code`
  String get couponCode {
    return Intl.message(
      'coupon code',
      name: 'couponCode',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Package price`
  String get packagePrice {
    return Intl.message(
      'Package price',
      name: 'packagePrice',
      desc: '',
      args: [],
    );
  }

  /// `Coupon discount`
  String get couponDiscount {
    return Intl.message(
      'Coupon discount',
      name: 'couponDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `The price includes tax and delivery`
  String get thePriceIncludeTaxAndDelivery {
    return Intl.message(
      'The price includes tax and delivery',
      name: 'thePriceIncludeTaxAndDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Confirm and pay`
  String get confirmAndPay {
    return Intl.message(
      'Confirm and pay',
      name: 'confirmAndPay',
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
