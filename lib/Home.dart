import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen1.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';

import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen11.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen12.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen13.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen14.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen3.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen6.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen7.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen8.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen9.dart';

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

  var listToShow = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [],
          )
        ]),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.lightBlueAccent,
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  onPressed: (() {
                    var random = Random();
                    final List<Widget> _widgets = [
                      Screen2(),
                      Screen3(),
                      Screen4(),
                      Screen5(),
                      Screen6(),
                      Screen7(),
                      Screen8(),
                      Screen9(),
                      Screen10(),
                      Screen11(),
                      Screen12(),
                      Screen13(),
                      Screen12(),
                      Screen14(),
                      Screen16()
                    ];

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                _widgets[random.nextInt(_widgets.length)])));
                  }),
                  child: Text(
                    "Iniciar",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(20),
                ),
                icon: Icon(Icons.arrow_back),
                label: Text(
                  "Sign Out",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: (() => FirebaseAuth.instance.signOut()),
              )
            ],
          ),
        ));
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
