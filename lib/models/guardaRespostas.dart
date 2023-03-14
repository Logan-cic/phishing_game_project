import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen15.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen9.dart';
import 'package:phishing_game_project/services/firebase_crud.dart';

import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';

class GuardaRespostas {
  static int numScreensShown = 0;
  static List<Map<String, dynamic>> _respostas = [];
  static List<int> screensShown = [];
  static List<Widget> _widgets = 
  [
    Screen2(), Screen3(), Screen4(), Screen5(),
    Screen6(), Screen7(), Screen8(), Screen9(),
    Screen10(), Screen11(), Screen12(),Screen13(),
    Screen14(), Screen15(), Screen16()
  ];


  adiciona(Map<String, dynamic> rpt) {
      _respostas.add(rpt);
  }

  int incrementa() {
    return numScreensShown++;
  }

  int get tamanho => _respostas.length;
  int get numTelasMostradas => numScreensShown;
  List<Map<String, dynamic>> get conteudo => _respostas;
  List<int> get indexSorteados => screensShown;
  List<Widget> get telas => _widgets;
}

