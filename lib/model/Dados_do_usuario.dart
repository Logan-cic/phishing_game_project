// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:phishing_game_project/Home.dart';

// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen9.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';

import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';

class Userdata {
  String _name = '';
  String _email = '';
  dynamic _idade;
  // String _nivelEscolaridade;
  // String _genero;
  // dynamic _telefone;
  String _senha = '';
  String _simOuNao = '';
  String _casoSim = '';
  String _casoNao = '';
  List<Map<String, dynamic>> respostas = [];

  Userdata();

  // final _random = new Random();
  // var telas = [

  // ];

  String get casoSim => _casoSim;

  set casoSim(String value) {
    _casoSim = value;
  }

  String get casoNao => _casoNao;

  set casoNao(String value) {
    _casoNao = value;
  }

  String get simOuNao => _simOuNao;

  set simOuNao(String value) {
    _simOuNao = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  dynamic get idade => _idade;

  set idade(dynamic value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  // _colecionaResposta() {
  //   var random = Random();
  //   int i;
  //   final List<Widget> _widgets = [Screen2(),Screen3(), Screen4(),
  //                                 Screen5(), Screen6(), Screen7(),
  //                                 Screen8(),Screen9(),Screen10(),
  //                                 Screen11(),Screen12(), Screen13(),
  //                                 Screen12(), Screen14(), Screen16()];
  //   for (i = 1; i <= 15; i++) {
  //     _widgets[random.nextInt(_widgets.length)];
  //     listaDeRespostas.add({
  //       "Sim ou não": name,
  //       "Caso sim": name,
  //       "Caso não": name,
  //     });
  //   }
  // }

  adiciona() {
    var random = Random();
    final List<Map<dynamic, dynamic>> listaDeRespostas = [];
    final List<Widget> _widgets = [
      Screen2(),
      Screen3(),
      Screen4(),
      Screen16(),
    ];

    print("Merda");
  }
}
