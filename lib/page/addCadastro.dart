// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phishing_game_project/Home.dart';
// import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen2.dart';

import '../Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen5.dart';
import '../services/firebase_crud.dart';
// import 'listpage.dart';

class AddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddPage();
  }
}

class _AddPage extends State<AddPage> {
  final _areaDeAtuacao = TextEditingController();
  final _treinamento = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  TextEditingController _date = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextFormField(
                              controller: _treinamento,
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(fontSize: 20),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.fromLTRB(32, 16, 32, 16),
                                  hintText: "Já recebeu algum treinamento sobre phishing?",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32)))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextFormField(
                              controller: _areaDeAtuacao,
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(fontSize: 20),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'This field is required';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(32, 16, 32, 16),
                                  hintText: "Área de atuação",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32)))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextFormField(
                            controller: _date,
                            decoration: InputDecoration(
                                hintText: "Data de nascimento",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                            onTap: () async {
                              DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              initialDatePickerMode:
                              DatePickerMode.year;

                              if (pickeddate != null) {
                                setState(() {
                                  _date.text =
                                      DateFormat("yyyy").format(pickeddate);
                                });
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 10),
                          child: Container(
                            width: screenWidth,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.lightBlueAccent,
                                    padding:
                                        const EdgeInsets.fromLTRB(32, 16, 32, 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32))),
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    var response = await FirebaseCrud.addUsuario(
                                        idade: _date.text,
                                        areaDeAtuacao: _areaDeAtuacao.text,
                                        treinamento: _treinamento.text);
                          
                                    Navigator.pushAndRemoveUntil<dynamic>(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                        builder: (BuildContext context) => Home(),
                                      ),
                                      (route) =>
                                          false, //To disable back feature set to false
                                    );
                                  }
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
