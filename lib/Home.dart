import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen1.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen10.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen4.dart';

import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int randomNumber = 0;
  final List<Widget> _widgets = [Home(), Screen16(), Screen2()];

  void _generateRandomNumber() {
    var random = Random();
    randomNumber = _widgets[random.nextInt(_widgets.length)] as int;
    // now the range works like 0 to n-1
    setState(() => randomNumber = random.nextInt(_widgets.length));
  }

  var listToShow = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32))),
              child: Text(
                "Responder",
                style: TextStyle(
                    color: Color.fromARGB(255, 51, 5, 115), fontSize: 20),
              ),
              onPressed: (() {
                var random = Random();
                final List<Widget> _widgets1 = [Screen10(), Screen4(), Screen1()];
                final List<Widget> _widgets = [_widgets1[random.nextInt(_widgets1.length)]];
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => _widgets[random.nextInt(_widgets.length)])));   
              }),
            )
          ],
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
