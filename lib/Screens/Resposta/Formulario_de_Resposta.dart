import 'package:flutter/material.dart';

class FormularioDeResposta extends StatefulWidget {
  const FormularioDeResposta({super.key});

  @override
  State<FormularioDeResposta> createState() => _FormularioDeRespostaState();
}

class _FormularioDeRespostaState extends State<FormularioDeResposta> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String email = "";
  String password = "";

  void _submit() {
    // you can write your
    // own code according to
    // whatever you want to submit;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responda"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'O exemplo mostrado é Phishing? (sim ou não)'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              
                TextFormField(
                  decoration: InputDecoration(labelText: 'Na sua opnião porque o exemplo é um phishing.'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),

                TextButton(onPressed: _submit,
                    child: Text("Responder"),)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
