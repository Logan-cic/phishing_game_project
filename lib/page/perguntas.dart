import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/fim.dart';
import '../models/Sorteador.dart';
import '../models/guardaRespostas.dart';
import '../services/firebase_crud.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});
  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  static int _counter = 0;
  static int _contadorAcertos = 0;

  final _justificativa = TextEditingController();
  GuardaRespostas contador = GuardaRespostas();

  String _selectedOption = "";
  static bool par = true;
  static bool impar = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _contagemAcertos() {
    setState(() {
      _contadorAcertos++;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool retornar = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        if (retornar == true) {
          Navigator.of(context).pop();
          setState(() {
            retornar = false;
          });
        }

        return retornar;
      },
      child: Scaffold(
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
                                child: Container(
                                  width: screenWidth,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor:
                                              Colors.lightBlueAccent,
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
                                          int numerosDaVez =
                                              Sorteador.sortear();

                                          print(
                                              " ESSE É O NUMERO DA VEZ $numerosDaVez");
                                          if (_counter == 10) {
                                            await FirebaseCrud
                                                .addRespostaECadastro();
                                            print(
                                                'Redirecionando para a tela Finalizado');
                                            setState(() {
                                              _counter = 0;
                                            });
                                            setState(() {
                                              par = true;
                                            });
                                            setState(() {
                                              impar = true;
                                            });

                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Finalizado()));
                                          } else if ((numerosDaVez % 2) == 0 &&
                                              lista.tamanhoEP < 6 &&
                                              par == true) {
                                            int randomIndex = Random()
                                                .nextInt(lista.telas.length);
                                            while (lista.indexSorteados
                                                .contains(randomIndex)) {
                                              randomIndex = Random()
                                                  .nextInt(lista.telas.length);
                                            }
                                            lista.indexSorteados
                                                .add(randomIndex);
                                            lista.adicionaEP({
                                              "sim ou não": _selectedOption,
                                              "Justificativa":
                                                  _justificativa.text
                                            });

                                            //verificar se a resposta é correta o não
                                            if (_selectedOption == "sim") {
                                              _contagemAcertos();

                                              print("Esse foi o teste de acertos $_contadorAcertos");
                                            }

                                            if (lista.tamanhoEP == 5) {
                                              setState(() {
                                                par = false;
                                              });
                                            }
                                            _incrementCounter();
                                            lista.incrementa();
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder:
                                                        (BuildContextcontext) =>
                                                            lista.telas[
                                                                randomIndex]));
                                          } else if ((numerosDaVez % 2) == 1 &&
                                              lista.tamanhoNP < 6 &&
                                              impar == true) {
                                            int randomIndex = Random()
                                                .nextInt(lista.telasNP.length);
                                            while (lista.indexSorteadosNP
                                                .contains(randomIndex)) {
                                              randomIndex = Random().nextInt(
                                                  lista.telasNP.length);
                                            }
                                            lista.indexSorteadosNP
                                                .add(randomIndex);
                                            lista.adicionaNP({
                                              "sim ou não": _selectedOption,
                                              "Justificativa":
                                                  _justificativa.text
                                            });

                                            //verificar se a resposta é correta o não
                                            if (_selectedOption == "não") {
                                              _contagemAcertos();

                                              print("Esse foi o teste de acertos $_contadorAcertos");
                                            }


                                            if (lista.tamanhoNP == 5) {
                                              setState(() {
                                                impar = false;
                                              });
                                            }
                                            _incrementCounter();
                                            lista.incrementa();
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder:
                                                        (BuildContextcontext) =>
                                                            lista.telasNP[
                                                                randomIndex]));
                                          }
                                        }
                                      }),
                                ),
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
