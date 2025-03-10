import 'package:flutter/material.dart';
import 'package:kittbank/pages/home/my_available_balance.dart';

import 'pages/add_card_screen.dart';
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
  static const String splash = '/';
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

  static Map<String, WidgetBuilder> routes = {
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
  };
}
