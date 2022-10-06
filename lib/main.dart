import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:tugas2_flutter/landing.dart';
import 'package:tugas2_flutter/login_page.dart';
import 'package:tugas2_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}