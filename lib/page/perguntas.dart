import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
import 'package:phishing_game_project/main.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import 'package:phishing_game_project/page/addCadastro.dart';
import 'package:phishing_game_project/page/finalizado.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});
  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  static int _counter = 0;
  final _justificativa = TextEditingController();
  // bool checkBoxSim = false;
  // bool checkBoxNao = false;
  SimOuNao simOuNao = SimOuNao.nao;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Widget> _widgets = [
    Screen2(),
    Screen13(),
    Screen14(),
    Screen8(),
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final perguntaDeSimOuNao = Row(
      children: [
        Radio(
          value: SimOuNao.sim,
          groupValue: simOuNao,
          onChanged: (SimOuNao? selecionado) {
            setState(() {
              simOuNao = selecionado!;
            });
          },
        ),
        Text("Sim"),
        Radio(
          value: SimOuNao.nao,
          groupValue: simOuNao,
          onChanged: (SimOuNao? selecionado) {
            setState(() {
              simOuNao = selecionado!;
            });
          },
        ),
        Text("Não")
      ],
    );

    final justificativa = TextFormField(
        controller: _justificativa,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Campo Obrigatório';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Justificativa caso sim",
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
            var random = Random();
            GuardaRespostas resposta = GuardaRespostas();
            _incrementCounter();
            resposta.adiciona({
              "Sim ou Não": simOuNao,
              "Justificativa": _justificativa.text,
            });
            if (resposta.tamanho == 4) {
              var response = await FirebaseCrud.addResposta(resposta.conteudo);
              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => Finalizado(),
                ),
                (route) => false, //To disable back feature set to false
              );
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          _widgets[random.nextInt(_widgets.length)])));
            }
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
            Text("Agora Responda '$_counter'/12 "),
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
                  Text("Na sua opnião o exemplo é um phishing?"),
                  const SizedBox(height: 35.0),
                  perguntaDeSimOuNao,
                  const SizedBox(height: 25.0),
                  justificativa,
                  const SizedBox(height: 35.0),
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

// Column(
//       children: [
//         Row(
//           children: [
//             Checkbox(
//                 value: this.checkBoxSim,
//                 onChanged: (checkBoxSim) {
//                   // print(checkBoxSim);
//                   setState(() {
//                     checkBoxSim = true;
//                   });
//                 }),
//             Text("Sim"),
//             Checkbox(
//                 value: this.checkBoxNao,
//                 onChanged: (checkBoxNao) {
//                   // print(checkBoxNao);
//                   setState(() {
//                     checkBoxSim = true;
//                   });
//                 }),
//             Text("Não"),
//           ],
//         ),
//       ],
//     );