import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phishing_game_project/Screens/Email/Exemplo_de_phishing_de_nivel_facil/Screen16.dart';

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
  final _dateCtl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime _dateTime = DateTime.now();

  Future<Null> _selectcDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2030),
      locale: Localizations.localeOf(context),
    );
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateCtl.text = picked.toIso8601String();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final campoAreaDeAtuacao = TextFormField(
        controller: _areaDeAtuacao,
        autofocus: true,
        keyboardType: TextInputType.text,
        style: const TextStyle(fontSize: 20),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
            hintText: "Área de atuação",
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32))));

    final campoDeIdade = TextFormField(
        controller: _dateCtl,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectcDate(context);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          hintText: "Data de nascimento",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        ));

    final SaveButon = Padding(
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
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FirebaseCrud.addUsuario(
              idade: _dateCtl.text,
              areaDeAtuacao: _areaDeAtuacao.text,
            );
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => Screen16(),
              ),
              (route) => false, //To disable back feature set to false
            );
            if (response.code != 200) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(response.message.toString()),
                    );
                  });
            }
          }
        },
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Row(
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
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.supervisor_account,
                          size: 180,
                        ),
                        const SizedBox(height: 35.0),
                        campoAreaDeAtuacao,
                        const SizedBox(height: 35.0),
                        campoDeIdade,
                        const SizedBox(height: 45.0),
                        SaveButon,
                        const SizedBox(height: 15.0),
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
