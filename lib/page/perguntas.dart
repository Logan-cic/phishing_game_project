import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import 'package:phishing_game_project/page/addCadastro.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});
  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  final _simOuNao = TextEditingController();
  final _casoSim = TextEditingController();
  final _casoNao = TextEditingController();
  List<Widget> _widgets = [
    Screen2(),
    Screen13(),
    Screen14(),
    Screen8(),
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final perguntaDeSimOuNao = TextFormField(
        controller: _simOuNao,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Sim ou não",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final perguntaCasoSim = TextFormField(
        controller: _casoSim,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Justificativa caso sim",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final perguntaCasoNao = TextFormField(
        controller: _casoNao,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Justificativa caso não",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final SaveButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            var random = Random();
            GuardaRespostas resposta = GuardaRespostas();
            resposta.adiciona({
              "sim ou não": _simOuNao.text,
              "Caso sim": _casoSim.text,
              "Caso não": _casoNao.text
            });
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        _widgets[random.nextInt(_widgets.length)])));
          }
        },
        child: Text(
          "responder",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: [
            Text("Agora Responda "),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  perguntaDeSimOuNao,
                  const SizedBox(height: 25.0),
                  perguntaCasoSim,
                  const SizedBox(height: 35.0),
                  perguntaCasoNao,
                  const SizedBox(height: 45.0),
                  SaveButon,
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
