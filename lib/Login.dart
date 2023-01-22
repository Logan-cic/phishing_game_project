import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';

import 'Home.dart';
import 'Registration.dart';
import 'model/Dados_do_usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _errorMessage = " ";

  _autenticacaoDeLogin() {
    //retrieve the fields
    String email = _controllerEmail.text;
    String password = _controllerSenha.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (password.isNotEmpty) {
        setState(() {
          _errorMessage = " ";
        });

        Userdata user = Userdata();
        user.email = email;
        user.senha = password;
        _loginUser(user);
      } else {
        setState(() {
          _errorMessage = "Enter a valid password";
        });
      }
    } else {
      setState(() {
        _errorMessage = "Enter a valid email";
      });
    }
  }

  _loginUser(Userdata user) async {
    await Firebase.initializeApp();
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth
        .signInWithEmailAndPassword(email: user.email, password: user.senha)
        .then((firebaseUser) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const Home())));
    }).catchError((error) {
      setState(() {
        _errorMessage =
            'Erro ao auetenticar o usuario, verifique seu e-mail e senha.';
      });
    });
  }

  Future _verificaSeUsuarioEstaLogado() async {
    Firebase.initializeApp();
    FirebaseAuth auth = FirebaseAuth.instance;
    //auth.signOut();
    final User? loggedInUser = await auth.currentUser;
    if (loggedInUser != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const Home())));
    }
  }

  @override
  void initState() {
    _verificaSeUsuarioEstaLogado();
    super.initState();
  }

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
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.lightBlueAccent,
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: (() {
                      Screen16();
                    }),
                  )),
              Center(
                child: GestureDetector(
                  child: Text(
                    "não tem uma conta? cadastre-se aqui.",
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Resgistration())));
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Center(
                  child: Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
