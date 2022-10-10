import 'package:flutter/material.dart';
import 'package:poc_valuenotifier/ui/pages/home/home_page.dart';
import 'package:poc_valuenotifier/ui/pages/login/login_page.dart';
import 'package:poc_valuenotifier/ui/themes/app_theme.dart';

class PocApp extends StatelessWidget {
  const PocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildTheme(context),
      initialRoute: LoginPage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        LoginPage.route: (context) => const LoginPage(),
      },
    );
  }
}
