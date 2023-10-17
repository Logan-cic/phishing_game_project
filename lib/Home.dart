import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/models/cronometro.dart';
import 'package:phishing_game_project/page/cards/cards.dart';
import 'package:phishing_game_project/page/fim.dart';
import 'package:phishing_game_project/services/firebase_crud.dart';

import 'models/Sorteador.dart';
import 'models/guardaRespostas.dart';
import 'page/addCadastro.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int randomNumber = 0;
  var random = Random();



  _proximaTela() {
    GuardaRespostas lista = GuardaRespostas();
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

  sorteador() {
    GuardaRespostas lista = GuardaRespostas();
    int randomIndex = Random().nextInt(lista.telas.length);
    while (lista.indexSorteados.contains(randomIndex)) {
      randomIndex = Random().nextInt(lista.telas.length);
    }

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContextcontext) => lista.telas[randomIndex]));
  }

  var listToShow = [];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("images/simbolo_lab.png"),
              Text(
                "Game Phishing ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "By: LabSC - UFPA ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text("Bem vindo"),
              Container(
                width: screenWidth,
                child: TextButton(
                  onPressed: () {
                    Cronometro iniciar = Cronometro();
                    int numerosDaVez = Sorteador.sortear();
                    GuardaRespostas lista = GuardaRespostas();
                    if ((numerosDaVez % 2) == 1) {
                      
                      int randomIndex = Random().nextInt(lista.telas.length);
                      while (lista.indexSorteados.contains(randomIndex)) {
                        randomIndex = Random().nextInt(lista.telas.length);
                      }
                      lista.indexSorteados.add(randomIndex);
                      iniciar.iniciar();
                      lista.incrementa();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContextcontext) =>lista.telas[randomIndex]));
                    } else if((numerosDaVez % 2) == 1) {
                     
                      int randomIndex = Random().nextInt(lista.telasNP.length);
                      while (lista.indexSorteadosNP.contains(randomIndex)) {
                      randomIndex = Random().nextInt(lista.telasNP.length);
                      }
                      lista.indexSorteadosNP.add(randomIndex);
                      iniciar.iniciar();
                      lista.incrementa();
                      Navigator.pushReplacement(
                      context,
                        MaterialPageRoute(
                          builder:
                                (BuildContextcontext) =>lista.telasNP[ randomIndex]));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Iniciar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Game Phishing'),
            ),
            ListTile(
              title: const Text('Cards'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                        MaterialPageRoute(
                          builder:
                            (BuildContextcontext) => Cards()));
              },
            ),
            ListTile(
              title: const Text('Contato pra denuncia'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sobre o Phishing'),
              onTap: () {},
            ),
          ]),
        ),
      ),
    );
  }
}