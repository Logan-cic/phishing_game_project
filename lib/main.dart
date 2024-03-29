import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/Splash/splash_page.dart';
import 'package:phishing_game_project/page/fim.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Phishing',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
