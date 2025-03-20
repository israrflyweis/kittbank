import 'package:flutter/material.dart';
import 'package:kittbank/pages/chat_page/chat_screen.dart';
import 'package:kittbank/pages/doller_tab/pay_request_screen.dart';
import 'package:kittbank/pages/doller_tab/qr_code_scanner.dart';
import 'package:kittbank/pages/doller_tab/request_pay_screen.dart';
import 'package:kittbank/pages/doller_tab/scanner_page.dart';
import 'package:kittbank/pages/doller_tab/zelle_screen.dart';
import 'package:kittbank/pages/doller_tab/zelle_tab_screen.dart';
import 'package:kittbank/pages/home/my_available_balance.dart';
import 'package:kittbank/pages/home/splash_screen.dart';
import 'package:kittbank/pages/home/splash_screen2.dart';
import 'package:kittbank/pages/home/splash_screen_home.dart';
import 'package:kittbank/pages/home/splash_third_screen.dart';
import 'package:kittbank/pages/profile_tab/account_statement.dart';
import 'package:kittbank/pages/profile_tab/address_screen.dart';
import 'package:kittbank/pages/profile_tab/contacts.dart';
import 'package:kittbank/pages/profile_tab/documents.dart';
import 'package:kittbank/pages/profile_tab/favorites.dart';
import 'package:kittbank/pages/profile_tab/linked_banks.dart';
import 'package:kittbank/pages/profile_tab/notifications.dart';
import 'package:kittbank/pages/profile_tab/saving_screen.dart';
import 'package:kittbank/pages/profile_tab/security_privacy.dart';
import 'package:kittbank/pages/profile_tab/tex_returns.dart';
import 'package:kittbank/pages/wallet/insights_activity.dart';
import 'package:kittbank/pages/wallet/otp_verifyi.dart';
import 'package:kittbank/pages/wallet/support_screen.dart';

import 'controller/country_selection.dart';
import 'pages/wallet/add_card_screen.dart';
import 'pages/atm/atm_map_screen.dart';
import 'pages/atm/find_atm_screen.dart';
import 'pages/auth/forget_screen.dart';
import 'pages/auth/intro_screen.dart';
import 'pages/auth/login_screen.dart';
import 'pages/auth/new_password_screen.dart';
import 'pages/auth/otp_screen.dart';
import 'pages/auth/register_screen.dart';
import 'pages/home/tab_screen.dart';
import 'pages/setting/change_pin_page.dart';
import 'pages/setting/contact_us_screen.dart';
import 'pages/setting/edit_profile_screen.dart';

class AppRoutes {
  static const String splashFirstScreen = '/SplashFirstScreen';
  static const String splashSecondScreen = '/SplashSecondScreen';
  static const String splashThirdScreen = '/splashThirdScreen';
  static const String splashScreenHome = "/SplashScreenHome";
  static const String intro = "/intro";
  static const String login = "/login";
  static const String register = "/register";
  static const String forget = "/forget";
  static const String otp = "/otp";
  static const String newPassword = "/newPassword";
  static const String changePin = "/changePin";
  static const String editProfile = "/editProfile";
  static const String tabScreen = "/tabScreen";
  static const String atmMapScreen = "/AtmMapScreen";
  static const String findAtmScreen = "/FindAtmScreen";
  static const String contactUsScreen = "/ContactUsScreen";
  static const String addCardScreen = "/AddCardScreen";
  static const String availableBalanceScreen = "/AvailableBalanceScreen";
  static const String insightsActivity = "/InsightsActivity";
  static const String otpVerification = "/OtpVerification";
  static const String supportScreen = "/SupportScreen";
  static const String linkedBanks = "/LinkedBanks";
  static const String securityPrivacy = "/SecurityPrivacy";
  static const String favorites = "/Favorites";
  static const String contacts = "/Contacts";
  static const String notificationsScreen = "/NotificationsScreen";
  static const String documentsScreen = "/DocumentsScreen";
  static const String accountStatement = "/AccountStatement";
  static const String savingScreen = "/SavingScreen";
  static const texReturnsScreen = "/TexReturnsScreen";
  static const addressScreen = "/AddressScreen";
  static const languageSelectionScreen = "/LanguageSelectionScreen";
  static const requestPayScreen = "/RequestPayScreen";
  static const payRequestScreen = "/PayRequestScreen";
  static const zelleScreen = "/ZelleScreen";
  static const zelleTabScreen = "/ZelleTabScreen";
  static const qrCodeGenrator = "/QrCodeGenrator";
 // static const qrCodeScanner = "/QrCodeScanner";
  static const massageScreen = "/MassageScreen";

  static Map<String, WidgetBuilder> routes = {
    splashFirstScreen : (context) => SplashFirstScreen(),
    splashSecondScreen : (context) => SplashSecondScreen(),
    splashThirdScreen : (context) => SplashThirdScreen(),
    splashScreenHome : (context) => SplashScreenHome(),
    intro: (context) => IntroScreen(),
    login: (context) => LoginScreen(),
    register: (context) => RegisterScreen(),
    forget: (context) => ForgetScreen(),
    otp: (context) => OTPScreen(),
    newPassword: (context) => NewPasswordScreen(),
    changePin: (context) => ChangePinCode(),
    editProfile: (context) => EditProfileScreen(),
    tabScreen: (context) => TabScreen(),
    atmMapScreen: (context) => AtmMapScreen(),
    findAtmScreen: (context) => FindAtmScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    addCardScreen: (context) => AddCardScreen(),
    availableBalanceScreen: (context) => AvailableBalanceScreen(),
    insightsActivity: (context) => InsightsActivity(),
    otpVerification: (context) => OtpVerification(),
    supportScreen: (context) => SupportScreen(),
    linkedBanks: (context) => LinkedBanks(),
    securityPrivacy: (context) => SecurityPrivacy(),
    favorites: (context) => Favorites(),
    contacts: (context) => Contacts(),
    notificationsScreen: (context) => NotificationsScreen(),
    documentsScreen: (context) => DocumentsScreen(),
    accountStatement: (context) => AccountStatement(),
    savingScreen: (context) => SavingScreen(),
    texReturnsScreen: (context) => TexReturnsScreen(),
    addressScreen: (context) => AddressScreen(),
    languageSelectionScreen: (context) => LanguageSelectionScreen(),
    requestPayScreen: (context) => RequestPayScreen(),
    payRequestScreen: (context) => PayRequestScreen(),
    zelleScreen: (context) =>ZelleScreen(),
    zelleTabScreen: (context) => ZelleTabScreen(),
    qrCodeGenrator : (context) =>QrCodeGenrator(),
    //qrCodeScanner : (context) => QrCodeScanner(),
    massageScreen: (context) =>MassageScreen(),
  };
}
