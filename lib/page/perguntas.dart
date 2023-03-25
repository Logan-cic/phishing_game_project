import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'package:phishing_game_project/models/cronometro.dart';
import 'package:phishing_game_project/page/fim.dart';
import '../main.dart';
import '../models/guardaRespostas.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});
  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  static int _counter = 0;
  final _justificativa = TextEditingController();
  // SimOuNao simOuNao = SimOuNao.padrao;
  GuardaRespostas contador = GuardaRespostas();
  String? _selectedOption;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Agora Responda $_counter/10"),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.format_align_right,
              ),
            ],
          ),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Na sua opnião o exemplo mostrado é um phishing?",
                                style: TextStyle(
                                  fontSize: 22,
                                )),
                                Row(
      children: <Widget>[
        Radio(
          value: 'sim',
          groupValue: _selectedOption,
          onChanged: (valor) {
            setState(() {
             _selectedOption = "sim";
            });
          },
        ),
        Text('Sim'),
      ],
    ),
    Row(
      children: <Widget>[
        Radio(
          value: 'não',
          groupValue: _selectedOption,
          onChanged: (valor) {
            setState(() {
              _selectedOption = "não";
            });
          },
        ),
        Text('Não'),
      ],
    ),
                           
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextFormField(
                                  controller: _justificativa,
                                  maxLines: 5,
                                  autofocus: false,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Campo Obrigatório';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      hintText: "Justificativa",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)))),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, bottom: 10),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.lightBlueAccent,
                                        padding: const EdgeInsets.fromLTRB(
                                            32, 16, 32, 16),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32))),
                                    child: const Text(
                                      "Responder",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        GuardaRespostas lista =
                                            GuardaRespostas();
                                        if (lista.numTelasMostradas == 9) {
                                          await FirebaseCrud.addResposta();
                                          print(
                                              'Redirecionando para a tela Finalizado');
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Finalizado()),
                                          );
                                        } else {
                                          int randomIndex = Random()
                                              .nextInt(lista.telas.length);
                                          while (lista.indexSorteados
                                              .contains(randomIndex)) {
                                            randomIndex = Random()
                                                .nextInt(lista.telas.length);
                                          }
                                          lista.indexSorteados.add(randomIndex);
                                          lista.adiciona({
                                            "sim ou não": _selectedOption,
                                            "Justificativa": _justificativa.text
                                          });
                                          _incrementCounter();
                                          lista.incrementa();
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    lista.telas[randomIndex]),
                                          );
                                        }
                                      }
                                    }),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
