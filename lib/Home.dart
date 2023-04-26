import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/models/cronometro.dart';
import 'package:phishing_game_project/page/fim.dart';
import 'package:phishing_game_project/services/firebase_crud.dart';

import 'models/guardaRespostas.dart';
import 'page/addCadastro.dart';
// // import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen1.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
// import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';

// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
// import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen9.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int randomNumber = 0;
  // final List<Widget> _widgets = [Home(), Screen16(), Screen2()];

  // void _generateRandomNumber() {
  var random = Random();
  //   randomNumber = _widgets[random.nextInt(_widgets.length)] as int;
  //   // now the range works like 0 to n-1
  //   setState(() => randomNumber = random.nextInt(_widgets.length));
  // }

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

                    GuardaRespostas lista = GuardaRespostas();
                    if (lista.tamanhoEP <= 4) {
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
                              builder: (BuildContextcontext) =>
                                  lista.telas[randomIndex]));
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
              onTap: () {},
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

//   void updateDataInList() {
//     listToShow = Screens[_random.nextInt(Screens.length)] as List;
//   }

//   void showAllData() {
//     listToShow = Screens;
//   }
// }
}

// Center(
//         child: Column(
//           children: [
//             Container(
//                 child: Center(
//                   child: TextButton(
//               style: TextButton.styleFrom(
//                             backgroundColor: Colors.red,
//                             foregroundColor: Colors.lightBlueAccent,
//                             padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(32))),
//               child: Text(
//                   "Iniciar",
//                   style: TextStyle(
//                       color: Colors.black, fontSize: 20),

//               ),
//               onPressed: (() {
//                   var random = Random();
//                   final List<Widget> _widgets1 = [
//                     Screen10(),
//                     Screen4(),
//                     Screen1()
//                   ];
//                   final List<Widget> _widgets = [
//                     _widgets1[random.nextInt(_widgets1.length)]
//                   ];
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: ((context) =>
//                               _widgets[random.nextInt(_widgets.length)])));
//               }),
//             ),
//                 ))
//           ],
//         ),
//       ),
