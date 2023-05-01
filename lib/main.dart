import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/addCadastro.dart';
import 'Splash/splash_page.dart';

enum Resposta { sim, nao, padrao }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Game Phishing',
      debugShowCheckedModeBanner: false,
      home: AddPage(),
    );
  }
}
