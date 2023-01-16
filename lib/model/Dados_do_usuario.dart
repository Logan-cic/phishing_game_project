// import 'dart:math';

// /// Importing all the screens that are in the folder.
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/screen1.dart';

// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
// import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen9.dart';

class Userdata {
  String _name = '';
  String _email = '';
  dynamic _idade;
  // String _nivelEscolaridade;
  // String _genero;
  // dynamic _telefone;
  String _senha = '';
  String _simOuNao = '';
  String _motivo = '';
  var myMap = Map();

  Userdata();

  // final _random = new Random();
  // var telas = [
    
  // ];


  String get motivo => _motivo;

  set motivo(String value) {
    _motivo = value;
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
}
