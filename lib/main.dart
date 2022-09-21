// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pertama_kali2/ui/pages/bonus_page.dart';

import 'ui/pages/get_started_pages.dart';
import 'ui/pages/sign_up_page.dart';
import 'ui/pages/splash_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
      },
    );
  }
}
