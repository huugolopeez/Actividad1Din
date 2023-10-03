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
      },
      initialRoute: '/loginview',
      debugShowCheckedModeBanner: false,
    );
  }
}