import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_yemeksepeti_ui/pages/home.dart';
import 'package:flutter_yemeksepeti_ui/pages/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red.shade900));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yemeksepeti',
      home: LoginPage(),
    );
  }
}
