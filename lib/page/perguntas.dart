import 'dart:developer';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'package:phishing_game_project/page/finalizado.dart';
import '../main.dart';
import '../models/guardaRespostas.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});
  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  static int _counter = 1;
  final _justificativa = TextEditingController();
  SimOuNao simOuNao = SimOuNao.padrao;
  List<Widget> _screens = [ Screen2(),    Screen2(),    Screen3(),  Screen4(), Screen5(), Screen6(), Screen16()];
  List<Widget> _usedScreens = [];

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
              Text("Agora Responda $_counter/12 "),
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
                                Text("Não"),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: TextFormField(
                                  controller: _justificativa,
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
                                        GuardaRespostas lista = GuardaRespostas();
                                        if(lista.numTelasMostradas == 4){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Finalizado()),
                                          );
                                        }else {
                                          int randomIndex = Random().nextInt(lista.telas.length);
                                          while (lista.indexSorteados.contains(randomIndex)) {
                                            randomIndex = Random().nextInt(lista.telas.length);
                                          }
                                          lista.indexSorteados.add(randomIndex);
                                          lista.incrementa();
                                           Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => lista.telas[randomIndex]),
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

// if(resposta.tamanho < 4) {
//                                           Navigator.push(context, 
//                                           MaterialPageRoute(builder: ((context) => _widgets[random.nextInt(_widgets.length)])));
//                                         }else if (resposta.tamanho == 4) {
//                                           await FirebaseCrud.addResposta(resposta.conteudo);
//                                           // ignore: use_build_context_synchronously
//                                           Navigator.pushAndRemoveUntil<dynamic>(
//                                             context,
//                                             MaterialPageRoute<dynamic>(
//                                               builder: (BuildContext context) =>
//                                                   Finalizado(),
//                                             ),
//                                             (route) => false, //To disable back feature set to false
//                                           );
//                                         }
//                                       }












//  final perguntaDeSimOuNao = Row(
//       children: [
//         Radio(
//           value: SimOuNao.sim,
//           groupValue: simOuNao,
//           onChanged: (SimOuNao? selecionado) {
//             setState(() {
//               simOuNao = selecionado!;
//             });
//           },
//         ),
//         Text("Sim"),
//         Radio(
//           value: SimOuNao.nao,
//           groupValue: simOuNao,
//           onChanged: (SimOuNao? selecionado) {
//             setState(() {
//               simOuNao = selecionado!;
//             });
//           },
//         ),
//         Text("Não")
//       ],
//     );

//     final justificativa = TextFormField(
//         controller: _justificativa,
//         autofocus: false,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return 'Campo Obrigatório';
//           }
//           return null;
//         },
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             hintText: "Justificativa caso sim",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

//     final SaveButon = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Theme.of(context).primaryColor,
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: () async {
//           if (_formKey.currentState!.validate()) {
//             var random = Random();
//             GuardaRespostas resposta = GuardaRespostas();
//             _incrementCounter();
//             resposta.adiciona({
//               "Sim ou Não": simOuNao,
//               "Justificativa": _justificativa.text,
//             });
//             if (resposta.tamanho == 4) {
//               var response = await FirebaseCrud.addResposta(resposta.conteudo);
//               Navigator.pushAndRemoveUntil<dynamic>(
//                 context,
//                 MaterialPageRoute<dynamic>(
//                   builder: (BuildContext context) => Finalizado(),
//                 ),
//                 (route) => false, //To disable back feature set to false
//               );
//             } else {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: ((context) =>
//                           _widgets[random.nextInt(_widgets.length)])));
//             }
//           }
//         },
//         child: Text(
//           "responder",
//           style: TextStyle(color: Theme.of(context).primaryColorLight),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );

// Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Na sua opnião o exemplo é um phishing?"),
//                       const SizedBox(height: 35.0),
//                       perguntaDeSimOuNao,
//                       const SizedBox(height: 25.0),
//                       justificativa,
//                       const SizedBox(height: 35.0),
//                       SaveButon,
//                       const SizedBox(height: 15.0),
//                     ],
//                   ),
//                 ),
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