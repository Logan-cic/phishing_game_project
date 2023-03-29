import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen15.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
import 'package:phishing_game_project/Splash/splash_page.dart';
// import 'package:phishing_game_project/Splash/splash_page.dart';
import 'package:phishing_game_project/page/addCadastro.dart';
import 'package:phishing_game_project/page/fim.dart';
// import 'package:phishing_game_project/page/finalizado.dart';
import 'package:phishing_game_project/page/perguntas.dart';
import 'package:phishing_game_project/page/tutoriais/ComoResponder.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'package:intl/intl.dart';

import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/tela00.dart';
import 'page/concentimento/concentimento.dart';
// import 'package:phishing_game_project/Auth_page.dart';
// import 'package:phishing_game_project/Home.dart';
// import 'package:phishing_game_project/Login.dart';
// import 'package:phishing_game_project/Screens/Resposta/Formulario_de_Resposta.dart';
// import 'package:phishing_game_project/Utils.dart';
// import 'package:phishing_game_project/page/perguntas.dart';
// import 'Splash/splash_page.dart';
// import 'firebase_options.dart';
// import 'page/addCadastro.dart';

enum Resposta {
 sim,
 nao,
 padrao 
}

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
      
      home: Finalizado(),
    );
  }
}


