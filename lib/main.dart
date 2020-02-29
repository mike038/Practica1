import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/home.dart';
import 'package:practica_integradora_uno/utils/constants.dart';
import 'package:practica_integradora_uno/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: PRIMARY_COLOR,
      ),
      home: Login(),
    );
  }
}
