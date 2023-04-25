import 'dart:async';

import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        'LoginPage': (BuildContext context) => const LoginPage(),
        'RegisterPage': (BuildContext context) => const RegisterPage(),
        'AccueilPage': (BuildContext context) => const AccueilPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
      )),
    );
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      //ouvrir page login
      Navigator.of(context)
          .pushNamedAndRemoveUntil('LoginPage', (route) => false);
    });
    super.initState();
  }
}
