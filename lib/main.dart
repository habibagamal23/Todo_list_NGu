import 'package:flutter/material.dart';
import 'package:todolistapp/splashScreen.dart';

import 'Rigister.dart';
import 'loginScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
