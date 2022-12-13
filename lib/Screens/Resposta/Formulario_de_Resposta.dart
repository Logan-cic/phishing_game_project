import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FormularioDeResposta extends StatefulWidget {
  const FormularioDeResposta({super.key});

  @override
  State<FormularioDeResposta> createState() => _FormularioDeRespostaState();
}

class _FormularioDeRespostaState extends State<FormularioDeResposta> {
  String simOuNao = 'padrao', motivo = 'padrao';

  getSimOuNao(resposta1) {
    this.simOuNao = resposta1;
  }

  getMotivo(resposta2) {
    this.motivo = resposta2;
  }

  createData() async {
    await Firebase.initializeApp();
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("Respostas").doc("001");

    //create Map
    Map<String, String> respostas = {"ePhishing": simOuNao, "motivo": motivo};
    documentReference.set(respostas).whenComplete(
      () {
        print("teste criado");
      },
    );
  }

  // _submit() async {
  //   //String resposta1;

  //   // await Firebase.initializeApp();
  //   // FirebaseFirestore db = FirebaseFirestore.instance;
  //   // db
  //   //     .collection("Respostas")
  //   //     .add({"sim ou não": resposta1, "Motivo": resposta2});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responda"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText:
                            'O exemplo mostrado é Phishing? (sim ou não)'),
                    onChanged: (String resposta1) {
                      getSimOuNao(resposta1);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText:
                            'Na sua opnião porque o exemplo é um phishing?'),
                    onChanged: (String resposta2) {
                      getMotivo(resposta2);
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: (() {}), child: const Text("Responder"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
