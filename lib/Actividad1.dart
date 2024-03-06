import 'package:actividad1/main/HomeView.dart';
import 'package:actividad1/splash/SplashView.dart';
import 'package:flutter/material.dart';

import 'onBoarding/LoginView.dart';
import 'onBoarding/RegisterView.dart';


class Actividad1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '1DIN',
      routes: {
        '/loginview': (context) => LoginView(),
        '/registerview': (context) => RegisterView(),
        '/homeview': (context) => HomeView(),
        '/splashview': (context) => SplashView()
      },
      initialRoute: '/splashview',
      debugShowCheckedModeBanner: false
    );
  }
}