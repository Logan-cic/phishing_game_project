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
import 'package:phishing_game_project/Screens/SMS/SmsScreen1.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen10.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen11.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen12.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen2.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen3.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen4.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen5.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen6.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen7.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen8.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen9.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen1.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen10.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen11.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen12.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen13.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen14.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen15.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen16.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen17.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen18.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen19.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen2.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen20.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen4.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen5.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen6.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen7.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen8.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen9.dart';
import 'package:phishing_game_project/services/firebase_crud.dart';

import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';
import '../Screens/Whatsapp/WappScreen3.dart';

class GuardaRespostas {
  static int numScreensShown = 0;
  static List<Map<String, dynamic>> _respostas = [];
  static List<int> screensShown = [];
  static List<Widget> _widgets = 
  [
    Screen2(), Screen3(), Screen4(), Screen5(),
    Screen6(), Screen7(), Screen8(), Screen10(), 
    Screen11(), Screen12(),Screen13(),Screen14(), 
    Screen15(),WappScreen1(), WappScreen2(), WappScreen3(),
    WappScreen4(),WappScreen5(), WappScreen6(), WappScreen7(),
    WappScreen8(),WappScreen9(), WappScreen10(), WappScreen11(), 
    WappScreen12(), WappScreen13(), WappScreen14(), WappScreen15(), 
    WappScreen16(), WappScreen17(), WappScreen18(), WappScreen19(), 
    WappScreen20(), SmsScreen1(), SmsScreen2(), SmsScreen3(),
    SmsScreen4(), SmsScreen5(), SmsScreen6(), SmsScreen7(),
    SmsScreen8(), SmsScreen9(),  SmsScreen10(),  SmsScreen11(),
    SmsScreen12()
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


