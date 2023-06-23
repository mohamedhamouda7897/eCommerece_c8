import 'package:ecommerce_c8_friday/features/home/presentation/pages/home.dart';
import 'package:ecommerce_c8_friday/features/login/domain/entities/login.dart';
import 'package:ecommerce_c8_friday/features/login/presentation/pages/login.dart';
import 'package:ecommerce_c8_friday/features/sign_up/presentation/pages/sign_up.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = "/";
  static const String signUp = "SignUp";
  static const String home = "home";
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      case Routes.home:
        Map<String, LoginData> login =
            routeSettings.arguments as Map<String, LoginData>;
        LoginData loginData = login['userData']!;
        return MaterialPageRoute(
          builder: (context) => HomeScreen(loginData),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("UnDefine Route Page")),
          ],
        ),
      );
}
