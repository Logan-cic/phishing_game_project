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

  _salvandoRespostasDoUsuario() async {
    String simOuNao = _controllerSimOuNao.text;
    String motivo = _controllerMotivo.text;
    String nome = _controllerNome.text;
    Userdata user = Userdata();
    user.simOuNao = simOuNao;
    user.motivo = motivo;
    user.name = nome;

    await Firebase.initializeApp();
    FirebaseFirestore.instance.collection("Respostas").doc("001").set({
      "Nome": user.name,
      "sim ou não": user.simOuNao,
      "motivo": user.motivo
    });
  }

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
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerSimOuNao,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "O exemplo mostrado é Phishing? (sim ou não)",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerMotivo,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Como consguiu indetificar que o exemplo mostrado é phishing?",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerMotivo,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Caso não seja um phishing, nós diga o porque.",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        "Responder",
                        style: TextStyle(
                            color: Color.fromARGB(255, 51, 5, 115),
                            fontSize: 20),
                      ),
                      onPressed: (() {
                        _salvandoRespostasDoUsuario();
                      }),
                    )
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//se é phishing
//como consguiu indetificar que é phishing
//pq não é phishing