import 'package:atividade/pages/home.dart';
import 'package:atividade/styles/themeScheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: themeScheme(),
      home: HomeApp(),
    );
  }
}
