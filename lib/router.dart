import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/user_information.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case OtpScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(verificationId: verificationId),
      );

    case UserInformation.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformation(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doen\'t exits'),
        ),
      );
  }
}
