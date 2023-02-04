import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';

import 'Home.dart';
import 'Utils.dart';
import 'models/Dados_do_usuario.dart';

class Login extends StatefulWidget {
  final VoidCallback onClickedSignUp;
  const Login({super.key, required this.onClickedSignUp});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final _controllerEmail = TextEditingController();
  final _controllerSenha = TextEditingController();

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerSenha.dispose();

    super.dispose();
  }

  // TextEditingController _controllerEmail = TextEditingController();
  // TextEditingController _controllerSenha = TextEditingController();
  // String _errorMessage = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("images/simbolo_lab.png"),
                      Text(
                        "Game Phishing ",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "By: LabSC - UFPA ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextField(
                  controller: _controllerEmail,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32))),
                ),
              ),
              TextField(
                controller: _controllerSenha,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                    ),
                    icon: Icon(Icons.lock_open, size: 32),
                    label: Text(
                      "Entrar",
                      style: TextStyle(fontSize: 24),
                    ),
                    onPressed: signIn,
                  )),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    text: "Não tem uma conta?",
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onClickedSignUp,
                          text: "Cadastre-se aqui",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Theme.of(context).colorScheme.secondary))
                    ]),
              ),
            ],
          )),
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _controllerEmail.text.trim(),
        password: _controllerSenha.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils utils = Utils();
      utils.showSnackBar(e.message);
    }
  }
}
