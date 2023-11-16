import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/models/cadastroDoUsuario.dart';

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

  final dropValue = ValueNotifier(" ");

  String selectedValue = "Onde você está?";

  final dropOpcoes = ["Escola Pública", "Universidade", "Igreja", "Outros"];

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
                              style: const TextStyle(fontSize: 14),
                              validator: (value) {
                                List<String> opcoesAceitas = [
                                  "Sim",
                                  "sim",
                                  "SIM",
                                  "NÃO",
                                  "Não",
                                  "não",
                                  "nao",
                                  "Nao"
                                ];
                                if (value == null ||
                                    !opcoesAceitas.contains(value.trim())) {
                                  return 'Opção inválida. Digite "Sim" ou "Não".';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(32, 16, 32, 16),
                                  hintText:
                                      "Já recebeu algum treinamento sobre phishing?",
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
                              style: const TextStyle(fontSize: 14),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'campo obrigatorio';
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
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                              ),
                              hint: Text(selectedValue),
                              onChanged: (escolha) {
                                setState(() {
                                  selectedValue = escolha.toString();
                                });
                              },
                              items: dropOpcoes
                                  .map(
                                    (op) => DropdownMenuItem(
                                      value: op,
                                      child: Text(op),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextFormField(
                              controller: _date,
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 14),
                              validator: (value) {
                                RegExp regex = RegExp(r'^\d{4}$');
                                if (value == null ||
                                    !regex.hasMatch(value.toString())) {
                                  return 'Campo vazio ou ano inválido';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(32, 16, 32, 16),
                                  hintText: "Ano de nascimento",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 10),
                          child: Container(
                            width: screenWidth,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.lightBlueAccent,
                                    padding: const EdgeInsets.fromLTRB(
                                        32, 16, 32, 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32))),
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    // Usuario cadastro = Usuario();

                                    // cadastro.anoDeNascimento = _date.text;
                                    // cadastro.areaDeAtuacao = _areaDeAtuacao.text;
                                    // cadastro.jaFeztreinamentoSobrePhishing = _treinamento.text;
                                    print("chegou aqui 0 ");

                                    Usuario dados = Usuario();
                                    dados.setAreaDeAtuacao(_areaDeAtuacao.text);
                                    dados.setJaFeztreinamentoSobrePhishing(
                                        _treinamento.text);
                                    dados.setAnoDeNascimento(_date.text);
                                    dados.preencheMapDeCadastro();

                                    print("chegou aqui 1");

                                    // var response = await FirebaseCrud.addUsuario(
                                    //     idade: _date.text,
                                    //     areaDeAtuacao: _areaDeAtuacao.text,
                                    //     treinamento: _treinamento.text);

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                        builder: (BuildContext context) =>
                                            Home(),
                                      ),
                                      //To disable back feature set to false
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
