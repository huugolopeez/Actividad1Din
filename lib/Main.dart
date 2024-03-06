import 'package:flutter/material.dart';

import 'Actividad1.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  initFB();
  runApp(Actividad1());
}

void initFB() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
}
