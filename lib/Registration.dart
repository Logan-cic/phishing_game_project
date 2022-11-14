import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';
import 'model/Dados_do_usuario.dart';

class Resgistration extends StatefulWidget {
  const Resgistration({super.key});

  @override
  State<Resgistration> createState() => _ResgistrationState();
}

class _ResgistrationState extends State<Resgistration> {
  //Controllers
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerIdade = TextEditingController();
  String _errorMessage = " ";

  _authentication() {
    //retrieve the fields
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    String idade = _controllerIdade.text;

    if (nome.isNotEmpty && nome.length > 2) {
      if (email.isNotEmpty && email.contains("@")) {
        if (idade.isNotEmpty) {
          if (senha.isNotEmpty && senha.length > 6) {
            setState(() {
              _errorMessage = " ";
            });

            Userdata user = Userdata();
            user.name = nome;
            user.idade = idade;
            user.email = email;
            user.senha = senha;
            _userRegistrationInFirebase(user);
          } else {
            setState(() {
              _errorMessage = "Insira uma senha valida";
            });
          }
        } else {
          setState(() {
            _errorMessage = "Não deixe esse campo em branco";
          });
        }
      } else {
        setState(() {
          _errorMessage = "Isira um e-mail válido";
        });
      }
    } else {
      setState(() {
        _errorMessage = "Insira um nome valido";
      });
    }
  }

  _userRegistrationInFirebase(Userdata user) async{
    await Firebase.initializeApp();
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth
        .createUserWithEmailAndPassword(email: user.email, password: user.senha)
        .then(((firebaseUser) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => const Home())));
    })).catchError((error) {
      //print("error app:" + error.toString());
      setState(() {
        _errorMessage =
            'Erro ao cadastrar o usuário, verifique os campos e tente novamente';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Cadastro"),
          backgroundColor: Color.fromARGB(255, 51, 5, 115)),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child:
                      Image.asset("images/user.png", width: 200, height: 150),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Nome",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerIdade,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Idade",
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
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32))),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 51, 5, 115),
                          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        "Registration",
                        style: TextStyle(color: Color.fromARGB(255, 51, 5, 115), fontSize: 20),
                      ),
                      onPressed: (() {
                        _authentication();
                      }),
                    )),
                Center(
                    child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
