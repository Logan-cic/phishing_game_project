import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  List<Map<String, dynamic>> lista = [];
  final _simOuNao = TextEditingController();
  final _casoSim = TextEditingController();
  final _casoNao = TextEditingController();
  List<Widget> _widgets = [
    Screen2(),
    Screen16(),
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
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            // GuardaRespostas guardaRespostas = GuardaRespostas();
            // guardaRespostas.adiciona({
            //   "simOuNao": _simOuNao.text,
            //   "casoSim": _casoSim.text,
            //   "casoNao": _casoNao.text
            // });

            uploadFirebase();

            //   var response = await FirebaseCrud.addResposta(
            //       "simOuNao": _simOuNao.text,
            //       "casoSim": _casoSim.text,
            //       "casoNao": _casoNao.text);
            //   if (response.code != 200) {
            //     showDialog(
            //         context: context,
            //         builder: (context) {
            //           return AlertDialog(
            //             content: Text(response.message.toString()),
            //           );
            //         });
            //   } else {
            //     showDialog(
            //         context: context,
            //         builder: (context) {
            //           return AlertDialog(
            //             content: Text(response.message.toString()),
            //           );
            //         });
            //   }
            // }
          }
        },
        child: Text(
          "Save",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Game Phishing'),
        backgroundColor: Theme.of(context).primaryColor,
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

  Future uploadFirebase() async {
    // Random random = Random();
    // GuardaRespostas respostasDoUsuario = GuardaRespostas();
    // List<Map<String, dynamic>> listaDeRespostas = [];

    // for (int i = 0; i < 2; i++) {
    //   listaDeRespostas.add(respostasDoUsuario.respostas[i]);
    // }

    // if (listaDeRespostas.length < 2) {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: ((context) =>
    //               _widgets[random.nextInt(_widgets.length)])));
    // } else if (listaDeRespostas.length < 2){
      var response = await FirebaseCrud.addResposta();
      if (response.code != 200) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(response.message.toString()),
              );
            });
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(response.message.toString()),
              );
            });
      }
    }
 }
