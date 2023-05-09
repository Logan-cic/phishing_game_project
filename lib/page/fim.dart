import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/cadastroDoUsuario.dart';
import 'package:phishing_game_project/page/addCadastro.dart';

import '../models/guardaRespostas.dart';

class Finalizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Text(
                'Obrigado por participar da pesquisa sobre phishing!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Container(
                width: screenWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    GuardaRespostas limpa = GuardaRespostas();
                    Usuario novo = Usuario();
                    limpa.recomecaJogo();
                    novo.novoCadastro();
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => AddPage())));
                  },
                  child: Text('Voltar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
