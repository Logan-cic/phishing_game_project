import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen15.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen19.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen1.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen10.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen12.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen13.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen14.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen15.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen16.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen17.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen18.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen19.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen2.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen20.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen3.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen4.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen5.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen6.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen7.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen8.dart';
import 'package:phishing_game_project/Screens/SMS/SmsScreen9.dart';
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
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen7.dart';
import 'package:phishing_game_project/Screens/Whatsapp/WappScreen9.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen17.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen18.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen20.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen21.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';

class GuardaRespostas {
  static int numScreensShown = 0;
  static List<Map<String, dynamic>> _respostasPhishing = [];
  static List<Map<String, dynamic>> _respostasNaoPhishing = [];

  static List<dynamic> _acertos = [];

  static List<int> screensShown = [];
  static List<int> screensShown1 = [];

  static List<Widget> _widgets = [
    Screen6(),
    Screen7(),
    Screen8(),
    Screen10(),
    WappScreen2(),
    WappScreen4(),
    WappScreen5(),
    WappScreen7(),
    Screen11(),
    Screen12(),
    Screen14(),
    WappScreen16(),
    WappScreen17(),
    WappScreen19(),
    WappScreen20(),
    SmsScreen2(),
    SmsScreen4(),
    SmsScreen5(),
    SmsScreen7(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
    SmsScreen9(),
    SmsScreen10(),
    WappScreen9(),
    WappScreen10(),
    WappScreen11(),
    WappScreen12(),
    WappScreen13(),
    WappScreen14(),
    WappScreen15(),
    SmsScreen13(),
    SmsScreen16(),
    SmsScreen17(),
    SmsScreen18(),
    SmsScreen19(),
    SmsScreen20(),
  ];

  static List<Widget> _telasDeNaoPhishing = [
    WappScreen18(),
    SmsScreen12(),
    SmsScreen1(),
    SmsScreen3(),
    Screen13(),
    Screen17(),
    SmsScreen6(),
    SmsScreen8(),
    Screen18(),
    Screen19(),
    SmsScreen14(),
    SmsScreen15(),
    Screen20(),
    Screen21(),
    Screen15()
  ];

  adcionaAcerto(String value) {
    _acertos.add(value);
  }

  adicionaEP(Map<String, dynamic> rpt) {
    _respostasPhishing.add(rpt);
  }

  adicionaNP(Map<String, dynamic> rpt) {
    _respostasNaoPhishing.add(rpt);
  }

  int incrementa() {
    return numScreensShown++;
  }

  recomecaJogo() {
    _respostasPhishing.clear();
    _respostasNaoPhishing.clear();
  }

  int get tamanhoEP => _respostasPhishing.length;
  int get tamanhoNP => _respostasNaoPhishing.length;

  int get qtdAcertos => _acertos.length;

  int get numTelasMostradas => numScreensShown;
  List<Map<String, dynamic>> get conteudo => _respostasPhishing;
  List<Map<String, dynamic>> get conteudoNP => _respostasNaoPhishing;

  List<int> get indexSorteados => screensShown;
  List<int> get indexSorteadosNP => screensShown1;
  List<Widget> get telas => _widgets;
  List<Widget> get telasNP => _telasDeNaoPhishing;
}
