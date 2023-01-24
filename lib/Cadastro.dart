import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';
import 'model/Dados_do_usuario.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  //Controllers
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerIdade = TextEditingController();
  String _errorMessage = " ";

  _authentication() async {
    //retrieve the fields
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    dynamic idade = _controllerIdade.value;

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
            _salvandoDadosDoCadastro(user);
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

  _salvandoDadosDoCadastro(Userdata user) async {
    await Firebase.initializeApp();
    FirebaseFirestore.instance
        .collection("Dados de Cadastro")
        .doc("001")
        .set({"nome": user.name, "idade": user.idade, "e-mail": user.email});
  }

  _userRegistrationInFirebase(Userdata user) async {
    await Firebase.initializeApp();
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth
        .createUserWithEmailAndPassword(email: user.email, password: user.senha)
        .then(((firebaseUser) {
      Navigator.pushReplacement(
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
        title: Row(
          children: [
            const Text("Cadastro"),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.person_add_alt,
            ),
          ],
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.supervisor_account,
                  size: 180,
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
                    padding: const EdgeInsets.only(top: 16, bottom: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.lightBlueAccent,
                          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: (() {
                        _authentication();
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => Home())));
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
