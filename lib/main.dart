// ignore_for_file: prefer_const_constructors

import 'package:booking_pesawat/cubit/page_cubit.dart';
import 'package:booking_pesawat/ui/pages/checkout_page.dart';
import 'package:booking_pesawat/ui/pages/choose_seat_page.dart';
import 'package:booking_pesawat/ui/pages/success_checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:booking_pesawat/ui/pages/bonus_page.dart';
import 'package:booking_pesawat/ui/pages/home_page.dart';
import 'package:booking_pesawat/ui/pages/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'ui/pages/get_started_page.dart';
import 'ui/pages/sign_up_page.dart';
import 'ui/pages/splash_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/choose': (context) => ChooseSeatPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
