import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../model/Dados_do_usuario.dart';

class FormularioDeResposta extends StatefulWidget {
  const FormularioDeResposta({super.key});

  @override
  State<FormularioDeResposta> createState() => _FormularioDeRespostaState();
}

class _FormularioDeRespostaState extends State<FormularioDeResposta> {
  //Controllers
  TextEditingController _controllerSimOuNao = TextEditingController();
  TextEditingController _controllerMotivo = TextEditingController();
  TextEditingController _controllerNome = TextEditingController();

  _capturaRespota() {
    String simOuNao = _controllerSimOuNao.text;
    String motivo = _controllerMotivo.text;
    String nome = _controllerNome.text;
  }

  _salvandoRespostasDoUsuario() async {
    String simOuNao = _controllerSimOuNao.text;
    String motivo = _controllerMotivo.text;
    // String nome = _controllerNome.text;
    Userdata user = Userdata();
    user.simOuNao = simOuNao;
    user.motivo = motivo;
    // user.name = nome;

    List<dynamic> resposta = [
      {"nome": "asda"},
      2
    ];

    // int i;
    // final List<Map<dynamic, dynamic>> listDescricao = [];

    // for (i = 1; i <= 2; i++) {
    //   print("Enter name:");
    //   String? name = stdin.readLineSync();
    //   print("Enter OUTRO name:");
    //   String? outroName = stdin.readLineSync();
    //   listDescricao.add({"nome": name, "outro": outroName});
    // }
    // print(listDescricao);

    List<Map<String, dynamic>> locations = [
      {
        // 'Nome': nome,
        'city': 'Tokyo',
        'Latitude': 35.6762,
        'Longitude': 139.6503,
        'utcOffset': 9
      },
    ];

    await Firebase.initializeApp();
    FirebaseFirestore.instance.collection("Respostas").add({
      // "Nome": resposta[0],
      // "sim ou não": resposta[1],
      // "motivo": user.motivo
      "nome": locations
    });

    // .doc("001").set({
    //   "Nome": resposta[0],
    //   "sim ou não": resposta[1],
    //   "motivo": user.motivo
    // });
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
                Text("O exemplo mostrado é Phishing?", style: TextStyle(fontSize: 20),),
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
                  if (value == null && (value != "sim"  || value != "não" )) {
                    return 'Por favor responda apenas com sim ou não.';
                  }
                  return null;
                },
              ),
               SizedBox(
                height: 15,
              ),
              Text("Se sim, como consguiu indetificar que é phishing?", style: TextStyle(fontSize: 20),),
               SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextFormField(
                  controller: _controllerMotivo,
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
                Text("Se não, como consguiu indetificar que não é phishing?", style: TextStyle(fontSize: 20),),
               SizedBox(
                height: 12,
              ),
              TextFormField(
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
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//se é phishing
//se sim, como consguiu indetificar que é phishing?
//se não, como consguiu indetificar que não é phishing?

// Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 8),
//                   child: TextField(
//                     controller: _controllerSimOuNao,
//                     autofocus: true,
//                     keyboardType: TextInputType.text,
//                     style: TextStyle(fontSize: 17),
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
//                         hintText: "O exemplo mostrado é Phishing? (sim ou não)",
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(32))),

//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 8),
//                   child: TextField(
//                     controller: _controllerMotivo,
//                     autofocus: true,
//                     keyboardType: TextInputType.text,
//                     style: TextStyle(fontSize: 17),
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
//                         hintText:
//                             "Como consguiu indetificar que o exemplo mostrado é phishing?",
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(32))),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 8),
//                   child: TextField(
//                     controller: _controllerMotivo,
//                     autofocus: true,
//                     keyboardType: TextInputType.text,
//                     style: TextStyle(fontSize: 17),
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
//                         hintText:
//                             "Caso não seja um phishing, nós diga o porque.",
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(32))),
//                   ),
//                 ),
//                 Padding(
//                     padding: EdgeInsets.only(top: 16, bottom: 10),
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                           foregroundColor: Colors.blue,
//                           padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(32))),
//                       child: Text(
//                         "Responder",
//                         style: TextStyle(
//                             color: Color.fromARGB(255, 51, 5, 115),
//                             fontSize: 20),
//                       ),
//                       onPressed: (() {
//                         _salvandoRespostasDoUsuario();
//                       }),
//                     )),
//               ],
//             )
//           ],
//         ),
//       ),
