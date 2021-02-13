import 'package:lista_de_contatos/pages/contact.dart';
import 'package:lista_de_contatos/pages/home.dart';
import 'package:lista_de_contatos/styles/themeScheme.dart';
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
