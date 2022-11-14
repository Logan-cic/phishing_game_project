import 'package:flutter/material.dart';
import 'package:phishing_game_project/Registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                child: Image.asset("Images/logo.png", width: 200, height: 150),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: TextField(
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
                        foregroundColor: Colors.lightBlueAccent,
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: (() {}),
                  )),
              Center(
                child: GestureDetector(
                  child: Text(
                    "Don't have an account? register here.",
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Resgistration())));
                  }),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
