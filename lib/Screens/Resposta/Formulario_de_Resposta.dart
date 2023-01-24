import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';

import '../../model/Dados_do_usuario.dart';
import '../Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import '../Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import '../Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import '../Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';

class FormularioDeResposta extends StatefulWidget {
  const FormularioDeResposta({super.key});

  @override
  State<FormularioDeResposta> createState() => _FormularioDeRespostaState();
}

class _FormularioDeRespostaState extends State<FormularioDeResposta> {
  //Controllers
  TextEditingController _controllerSimOuNao = TextEditingController();
  TextEditingController _controllerCasoSim = TextEditingController();
  TextEditingController _controllerCasoNao = TextEditingController();

  _salvandoRespostasDoUsuario() async {
    String simOuNao = _controllerSimOuNao.text;
    String casoNao = _controllerCasoSim.text;
    String casoSim = _controllerCasoNao.text;

    Userdata user = Userdata();
    user.simOuNao = simOuNao;
    user.casoSim = casoSim;
    user.casoNao = casoNao;

    await Firebase.initializeApp();
    FirebaseFirestore.instance
        .collection("Resposta")
        .doc("001")
        .set({"Nome": "Logan", "sim ou não": "Sim", "motivo": "bla bla bla"});
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Agora Responda"),
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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 14,
              ),
              Text(
                "O exemplo mostrado é Phishing?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: _controllerSimOuNao,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText: 'O exemplo mostrado é Phishing? ',
                  labelText: 'sim ou não',
                ),
                validator: (value) {
                  if (value == null && (value != "sim" || value != "não")) {
                    return 'Por favor responda apenas com sim ou não.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Se sim, como consguiu indetificar que é phishing?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextFormField(
                  controller: _controllerCasoSim,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // hintText: '',
                    labelText: 'Justificativa caso sim',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Text(
                "Se não, como consguiu indetificar que não é phishing?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: _controllerCasoNao,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText:
                  //     'se não, como consguiu indetificar que não é phishing?',
                  labelText: 'Justificativa caso não',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Color.fromARGB(255, 7, 7, 7),
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    ),
                    child: const Text('Responder'),
                    onPressed: () {
                      var random = Random();
                      final List<Map<dynamic, dynamic>> listaDeRespostas = [];
                      final List<Widget> _widgets = [
                        Screen2(),
                        Screen3(),
                        Screen4(),
                        Screen16(),
                      ];
                      Userdata repostas = Userdata();
                      repostas.adiciona();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  _widgets[random.nextInt(_widgets.length)])));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
